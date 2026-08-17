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
