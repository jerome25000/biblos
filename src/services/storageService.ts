import { supabase } from '../supabaseClient'
import { STORAGE_BUCKET_IMAGES } from '../constants'

export function getPublicImageUrl(path: string | null): string | null {
  if (!path || path.trim() === '') {
    return null
  }

  const { data } = supabase.storage.from(STORAGE_BUCKET_IMAGES).getPublicUrl(path)
  return data.publicUrl
}

export async function uploadImage(path: string, file: Blob): Promise<void> {
  const { error } = await supabase.storage
    .from(STORAGE_BUCKET_IMAGES)
    .upload(path, file, { upsert: true, contentType: file.type })
  if (error) throw error
}
