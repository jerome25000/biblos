export const AUTEURS_PAGE_SIZE = 50
export const EDITEURS_PAGE_SIZE = 50
export const EMPRUNTS_PAGE_SIZE = 50
export const STATS_TOP_AUTEURS_LIMIT = 10
// Supabase caps responses at 1000 rows by default
export const SUPABASE_FETCH_PAGE_SIZE = 1000
// Breakpoint for mobile/tablet view (must be kept in sync with @media (max-width: 768px) in index.css)
export const MOBILE_BREAKPOINT_PX = 768
export const GUEST_ROLE = 'guest'
export const LIKE_WILDCARD = '%'
export const LIKE_ESCAPE_PATTERN = /[\\%_]/g
export const POSTGREST_QUOTE_ESCAPE_PATTERN = /[\\"]/g
export const POSTGREST_QUOTE = '"'

export const STORAGE_BUCKET_IMAGES = 'images'

export const ERROR_BOUNDARY_LOG_PREFIX = 'Unhandled render error:'

// Stored dates are UTC midnight; always read/format them in UTC
export const DATE_TIME_ZONE = 'UTC'

// Postgres `timestamp` values may use a space separator and carry no time zone
export const STORED_DATE_SEPARATOR_PATTERN = /^(\d{4}-\d{2}-\d{2})\s+/
export const STORED_DATE_TIME_PATTERN = /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}/
export const STORED_DATE_ZONE_PATTERN = /(Z|[+-]\d{2}(:?\d{2})?)$/i
export const UTC_DESIGNATOR = 'Z'
export const STORED_DATE_SEPARATOR_REPLACEMENT = '$1T'
