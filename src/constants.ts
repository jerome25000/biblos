export const AUTEURS_PAGE_SIZE = 50
export const EDITEURS_PAGE_SIZE = 50
export const EMPRUNTS_PAGE_SIZE = 50
export const STATS_TOP_AUTEURS_LIMIT = 10
// Supabase caps responses at 1000 rows by default
export const SUPABASE_FETCH_PAGE_SIZE = 1000
// Breakpoint for mobile/tablet view (must be kept in sync with @media (max-width: 768px) in index.css)
export const MOBILE_BREAKPOINT_PX = 768
// Search-as-you-type: debounce delay and minimum query length before showing "no results"
export const SEARCH_DEBOUNCE_MS = 300
export const SEARCH_MIN_QUERY_LENGTH = 2
export const GUEST_ROLE = 'guest'
export const LIKE_WILDCARD = '%'
export const LIKE_ESCAPE_PATTERN = /[\\%_]/g
export const POSTGREST_QUOTE_ESCAPE_PATTERN = /[\\"]/g
export const TRAILING_SLASHES_PATTERN = /\/+$/
export const POSTGREST_QUOTE = '"'

export const STORAGE_BUCKET_IMAGES = 'images'
export const STORAGE_IMAGES_FOLDER = 'images'

// Image upload validation
export const MAX_IMAGE_FILE_SIZE_BYTES = 5 * 1024 * 1024
export const IMAGE_MAGIC_BYTES_LENGTH = 12
export const MIME_JPEG = 'image/jpeg'
export const MIME_PNG = 'image/png'
export const MIME_GIF = 'image/gif'
export const MIME_WEBP = 'image/webp'
export const IMAGE_MIME_EXTENSIONS: Readonly<Record<string, string>> = {
  [MIME_JPEG]: 'jpg',
  [MIME_PNG]: 'png',
  [MIME_WEBP]: 'webp',
  [MIME_GIF]: 'gif',
}
// Magic-byte signatures
export const JPEG_SIGNATURE: readonly number[] = [0xff, 0xd8, 0xff]
export const PNG_SIGNATURE: readonly number[] = [0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]
export const GIF_SIGNATURE: readonly number[] = [0x47, 0x49, 0x46, 0x38]
export const RIFF_SIGNATURE: readonly number[] = [0x52, 0x49, 0x46, 0x46]
export const WEBP_SIGNATURE: readonly number[] = [0x57, 0x45, 0x42, 0x50]
export const WEBP_FORMAT_OFFSET = 8
export const ALLOWED_IMAGE_MIME_TYPES: readonly string[] = Object.keys(IMAGE_MIME_EXTENSIONS)
export const IMAGE_FILE_ACCEPT = ALLOWED_IMAGE_MIME_TYPES.join(',')
export const IMAGE_FALLBACK_MIME_TYPE = MIME_JPEG
export const IMAGE_EXPORT_QUALITY = 0.9
export const IMAGE_ERROR_KEYS = {
  tooLarge: 'livreForm.image.errorTooLarge',
  invalidType: 'livreForm.image.errorInvalidType',
  readFailed: 'livreForm.image.errorRead',
  loadFailed: 'livreForm.image.errorLoad',
} as const
export type ImageErrorKey = (typeof IMAGE_ERROR_KEYS)[keyof typeof IMAGE_ERROR_KEYS]

export const ERROR_BOUNDARY_LOG_PREFIX = 'Unhandled render error:'

// Stored dates are UTC midnight; always read/format them in UTC
export const DATE_TIME_ZONE = 'UTC'

// Postgres `timestamp` values may use a space separator and carry no time zone
export const STORED_DATE_SEPARATOR_PATTERN = /^(\d{4}-\d{2}-\d{2})\s+/
export const STORED_DATE_TIME_PATTERN = /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}/
export const STORED_DATE_ZONE_PATTERN = /(Z|[+-]\d{2}(:?\d{2})?)$/i
export const UTC_DESIGNATOR = 'Z'
export const STORED_DATE_SEPARATOR_REPLACEMENT = '$1T'

// Tab routing
export type Tab = 'livres' | 'auteurs' | 'editeurs' | 'emprunts' | 'statistiques'

export const TAB_PATHS: Record<Tab, string> = {
  livres: '/livres',
  auteurs: '/auteurs',
  editeurs: '/editeurs',
  emprunts: '/emprunts',
  statistiques: '/statistiques',
}

export const DEFAULT_TAB: Tab = 'livres'
export const DEFAULT_TAB_PATH = TAB_PATHS[DEFAULT_TAB]
export const ROOT_PATH = '/'
export const UNKNOWN_PATH = '*'
export const TAB_ID_PREFIX = 'tab-'
export const TAB_PANEL_ID = 'tabpanel-content'
// Display order of the tabs; `emprunts` is hidden from guests
export const TAB_ORDER: readonly Tab[] = ['livres', 'auteurs', 'editeurs', 'emprunts', 'statistiques']
export const GUEST_HIDDEN_TABS: readonly Tab[] = ['emprunts']
