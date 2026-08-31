import { getLocale } from './i18nService'

export function formatDate(value: string | null): string {
  if (!value) return ''
  const date = new Date(value)
  if (Number.isNaN(date.getTime())) return ''
  return date.toLocaleDateString(getLocale() === 'fr' ? 'fr-FR' : 'en-US')
}

const FR_DATE_PATTERN = /^(\d{2})\/(\d{2})\/(\d{4})$/

export function isoToFrDate(value: string | null): string {
  if (!value) return ''
  const date = new Date(value)
  if (Number.isNaN(date.getTime())) return ''
  const day = String(date.getDate()).padStart(2, '0')
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const year = date.getFullYear()
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
  return isoToFrDate(new Date().toISOString())
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
  const sizes = ['bytes', 'KB', 'MB']
  const i = Math.floor(Math.log(bytes) / Math.log(k))
  return (bytes / Math.pow(k, i)).toFixed(2) + ' ' + sizes[i]
}
