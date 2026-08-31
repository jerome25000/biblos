import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

console.log('🖼️  Supabase Image Bulk Upload');
console.log('Usage: node bulk_upload.js [source_directory]\n');

// Load environment variables
process.loadEnvFile('.env');

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error(
    '❌ Error: Missing environment variables.\n' +
    'Please add SUPABASE_SERVICE_ROLE_KEY to your .env file.\n' +
    'You can find it in Supabase dashboard > Settings > API > Service Role Key'
  );
  process.exit(1);
}

// Create Supabase client with service role key
const supabase = createClient(supabaseUrl, supabaseServiceKey);

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// Get source path from command line argument or use repo root
const sourcePath = process.argv[2] || __dirname;
const resolvedPath = path.resolve(sourcePath);

// Validate that the path exists and is a directory
if (!fs.existsSync(resolvedPath)) {
  console.error(`❌ Error: Directory not found: ${resolvedPath}`);
  process.exit(1);
}

const stats = fs.statSync(resolvedPath);
if (!stats.isDirectory()) {
  console.error(`❌ Error: Path is not a directory: ${resolvedPath}`);
  process.exit(1);
}

// Image extensions
const imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.webp', '.svg'];

// Directories to skip
const skipDirs = new Set(['node_modules', '.git', 'src', 'bdd', 'supabase', '.next', 'dist', 'build']);

async function getContentType(filePath) {
  const ext = path.extname(filePath).toLowerCase();
  const mimeMap = {
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
    '.png': 'image/png',
    '.gif': 'image/gif',
    '.webp': 'image/webp',
    '.svg': 'image/svg+xml',
  };
  return mimeMap[ext] || 'application/octet-stream';
}

async function uploadImages() {
  try {
    // Read files from source path
    const files = fs.readdirSync(resolvedPath);
    const imageFiles = files.filter((file) => {
      const ext = path.extname(file).toLowerCase();
      return imageExtensions.includes(ext);
    });

    if (imageFiles.length === 0) {
      console.log('ℹ️ No image files found in repository root.');
      return;
    }

    console.log(`📷 Found ${imageFiles.length} image file(s) to upload.\n`);

    for (const file of imageFiles) {
      const filePath = path.join(resolvedPath, file);
      const fileBuffer = fs.readFileSync(filePath);
      const contentType = await getContentType(filePath);
      const storagePath = `images/${file}`;

      try {
        const { data, error } = await supabase.storage
          .from('images')
          .upload(storagePath, fileBuffer, {
            contentType,
            upsert: true,
          });

        if (error) {
          console.error(`❌ Upload failed for ${file}:`, error.message);
        } else {
          const publicUrl = supabase.storage
            .from('images')
            .getPublicUrl(storagePath).data.publicUrl;
          console.log(`✅ Uploaded: ${file}`);
          console.log(`   Path: ${storagePath}`);
          console.log(`   Public URL: ${publicUrl}\n`);
        }
      } catch (err) {
        console.error(`❌ Error uploading ${file}:`, err.message);
      }
    }

    console.log('✨ Upload complete!');
  } catch (err) {
    console.error('❌ Fatal error:', err.message);
    process.exit(1);
  }
}

uploadImages();
