import { getLocale } from './i18nService'
import {
  TAB_ORDER,
  TAB_PATHS,
  type Tab,
  DATE_TIME_ZONE,
  STORED_DATE_SEPARATOR_PATTERN,
  STORED_DATE_TIME_PATTERN,
  STORED_DATE_ZONE_PATTERN,
  STORED_DATE_SEPARATOR_REPLACEMENT,
  UTC_DESIGNATOR,
  LIKE_ESCAPE_PATTERN,
  LIKE_WILDCARD,
  MOBILE_BREAKPOINT_PX,
  POSTGREST_QUOTE,
  POSTGREST_QUOTE_ESCAPE_PATTERN,
  TRAILING_SLASHES_PATTERN,
} from '../constants'

// Postgres `timestamp` (without time zone) columns come back with no designator
// (e.g. "2026-09-28T00:00:00"): they hold UTC values, so parse them as UTC.
export function parseStoredDate(value: string | null): Date | null {
  if (!value) return null
  let normalized = value.trim().replace(STORED_DATE_SEPARATOR_PATTERN, STORED_DATE_SEPARATOR_REPLACEMENT)
  if (
    STORED_DATE_TIME_PATTERN.test(normalized) &&
    !STORED_DATE_ZONE_PATTERN.test(normalized)
  ) {
    normalized += UTC_DESIGNATOR
  }
  const date = new Date(normalized)
  return Number.isNaN(date.getTime()) ? null : date
}

export function formatDate(value: string | null): string {
  const date = parseStoredDate(value)
  if (!date) return ''
  return date.toLocaleDateString(getLocale() === 'fr' ? 'fr-FR' : 'en-US', {
    timeZone: DATE_TIME_ZONE,
  })
}

const FR_DATE_PATTERN = /^(\d{2})\/(\d{2})\/(\d{4})$/

export function isoToFrDate(value: string | null): string {
  const date = parseStoredDate(value)
  if (!date) return ''
  const day = String(date.getUTCDate()).padStart(2, '0')
  const month = String(date.getUTCMonth() + 1).padStart(2, '0')
  const year = date.getUTCFullYear()
  return `${day}/${month}/${year}`
}

export function frDateToIso(value: string): string | null {
  const trimmed = value.trim()
  if (!trimmed) return null
  const match = FR_DATE_PATTERN.exec(trimmed)
  if (!match) return null
  const [, day, month, year] = match
  const date = new Date(Date.UTC(Number(year), Number(month) - 1, Number(day)))
  const isValid =
    date.getUTCFullYear() === Number(year) &&
    date.getUTCMonth() === Number(month) - 1 &&
    date.getUTCDate() === Number(day)
  return isValid ? date.toISOString() : null
}

export function isValidFrDate(value: string): boolean {
  if (!value.trim()) return true
  return frDateToIso(value) !== null
}

export function todayFrDate(): string {
  return dateToFrDate(new Date())
}

export function frDateToDate(value: string): Date | null {
  const trimmed = value.trim()
  if (!trimmed) return null
  const match = FR_DATE_PATTERN.exec(trimmed)
  if (!match) return null
  const [, day, month, year] = match
  const date = new Date(Number(year), Number(month) - 1, Number(day))
  const isValid =
    date.getFullYear() === Number(year) &&
    date.getMonth() === Number(month) - 1 &&
    date.getDate() === Number(day)
  return isValid ? date : null
}

export function dateToFrDate(date: Date | null): string {
  if (!date) return ''
  const day = String(date.getDate()).padStart(2, '0')
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const year = date.getFullYear()
  return `${day}/${month}/${year}`
}

// Year of a stored ISO date, read in UTC so it does not depend on the timezone
export function isoToUtcYear(value: string | null): number | null {
  const date = parseStoredDate(value)
  return date ? date.getUTCFullYear() : null
}

export function emptyToNull(value: string): string | null {
  const trimmed = value.trim()
  return trimmed === '' ? null : trimmed
}

export function pageToRange(
  page: number,
  pageSize: number,
): { from: number; to: number } {
  const from = (page - 1) * pageSize
  const to = from + pageSize - 1
  return { from, to }
}

export function totalPages(count: number, pageSize: number): number {
  return Math.max(1, Math.ceil(count / pageSize))
}

export interface TooltipAnchorRect {
  top: number
  left: number
  width: number
  height: number
}

export interface TooltipPosition {
  top: number
  left: number
}

export function calculateTooltipPosition(
  anchorRect: TooltipAnchorRect,
  bubbleWidth: number,
  bubbleHeight: number,
  viewportWidth: number,
  viewportHeight: number,
  gap = 10,
  padding = 10,
): TooltipPosition {
  let left = anchorRect.left + anchorRect.width / 2 - bubbleWidth / 2
  if (left < padding) {
    left = padding
  } else if (left + bubbleWidth > viewportWidth - padding) {
    left = viewportWidth - bubbleWidth - padding
  }

  let top = anchorRect.top - bubbleHeight - gap
  if (top < padding) {
    top = Math.min(
      anchorRect.top + anchorRect.height + gap,
      viewportHeight - bubbleHeight - padding,
    )
  }

  return { top, left }
}

export function formatBytes(bytes: number): string {
  if (bytes === 0) return '0 bytes'
  const k = 1024
  const sizes = ['bytes', 'KB', 'MB', 'GB']
  const i = Math.floor(Math.log(bytes) / Math.log(k))
  return (bytes / Math.pow(k, i)).toFixed(2) + ' ' + sizes[i]
}

export function countByKey<T, K>(
  items: T[],
  keyOf: (item: T) => K | null,
): Map<K, number> {
  const counts = new Map<K, number>()
  for (const item of items) {
    const key = keyOf(item)
    if (key === null) continue
    counts.set(key, (counts.get(key) ?? 0) + 1)
  }
  return counts
}

export interface CountEntry<K> {
  key: K
  count: number
}

export function sortCountEntriesByKeyDesc(
  counts: Map<number, number>,
): CountEntry<number>[] {
  return Array.from(counts.entries())
    .sort((a, b) => b[0] - a[0])
    .map(([key, count]) => ({ key, count }))
}

export function topCountEntries<K>(
  counts: Map<K, number>,
  limit: number,
): CountEntry<K>[] {
  return Array.from(counts.entries())
    .sort((a, b) => b[1] - a[1])
    .slice(0, limit)
    .map(([key, count]) => ({ key, count }))
}

export type ViewMode = 'table' | 'cards'

export function getDefaultViewMode(viewportWidth: number): ViewMode {
  return viewportWidth < MOBILE_BREAKPOINT_PX ? 'cards' : 'table'
}

// Escape LIKE/ILIKE special characters so user input is matched literally
export function escapeLikePattern(value: string): string {
  return value.replace(LIKE_ESCAPE_PATTERN, '\\$&')
}

// Double-quote a value for use inside a PostgREST logic-tree filter (.or/.and)
export function quotePostgrestValue(value: string): string {
  const escaped = value.replace(POSTGREST_QUOTE_ESCAPE_PATTERN, '\\$&')
  return `${POSTGREST_QUOTE}${escaped}${POSTGREST_QUOTE}`
}

// Build a safe "contains" ILIKE pattern, quoted for use inside .or()
export function buildQuotedContainsPattern(query: string): string {
  return quotePostgrestValue(
    `${LIKE_WILDCARD}${escapeLikePattern(query)}${LIKE_WILDCARD}`,
  )
}

// Build a safe "contains" ILIKE pattern for direct .ilike() calls
export function buildContainsPattern(query: string): string {
  return `${LIKE_WILDCARD}${escapeLikePattern(query)}${LIKE_WILDCARD}`
}

export interface PageResult<T> {
  data: T[] | null
  error: unknown
}

// Fetches every row by requesting consecutive ranges until a short page is returned
export async function fetchAllPages<T>(
  fetchPage: (from: number, to: number) => Promise<PageResult<T>>,
  pageSize: number,
): Promise<T[]> {
  const rows: T[] = []
  for (let from = 0; ; from += pageSize) {
    const { data, error } = await fetchPage(from, from + pageSize - 1)
    if (error) throw error
    const page = data ?? []
    rows.push(...page)
    if (page.length < pageSize) return rows
  }
}

/** Resolve the tab matching a URL path (null when the path is not a tab route). */
export function getTabFromPath(pathname: string): Tab | null {
  const normalized = pathname.length > 1 ? pathname.replace(TRAILING_SLASHES_PATTERN, '') : pathname
  const match = TAB_ORDER.find((tab) => TAB_PATHS[tab] === normalized)
  return match ?? null
}
