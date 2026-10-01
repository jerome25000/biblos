import { afterEach, describe, it, expect } from 'vitest'
import {
  dateToFrDate,
  formatDate,
  frDateToIso,
  isoToFrDate,
  isoToUtcYear,
  parseStoredDate,
  todayFrDate,
} from '../services/utilities'
import { computeAnneeStats } from '../services/statsService'
import { setLocale } from '../services/i18nService'

const TIME_ZONES = [
  'Europe/Paris',
  'America/New_York',
  'Pacific/Honolulu',
  'Asia/Tokyo',
  'Pacific/Kiritimati',
  'UTC',
]
const FR_DATE = '15/09/2026'
const STORED_FORMS = [
  '2026-09-28T00:00:00',
  '2026-09-28 00:00:00',
  '2026-09-28T00:00:00.000',
  '2026-09-28T00:00:00+00:00',
  '2026-09-28T00:00:00Z',
  '2026-09-28T00:00:00.000Z',
  '2026-09-28',
]
const NEW_YEAR_ISO = '2026-01-01T00:00:00.000Z'
const NEW_YEAR_END_ISO = '2025-12-31T23:59:59.000Z'

const originalTz = process.env.TZ

afterEach(() => {
  if (originalTz === undefined) delete process.env.TZ
  else process.env.TZ = originalTz
  setLocale('fr')
})

describe.each(TIME_ZONES)('dates in timezone %s', (tz) => {
  it('round-trips a French date through ISO', () => {
    process.env.TZ = tz
    const iso = frDateToIso(FR_DATE)
    expect(iso).toBe('2026-09-15T00:00:00.000Z')
    expect(isoToFrDate(iso)).toBe(FR_DATE)
  })

  it('formats dates without a day shift', () => {
    process.env.TZ = tz
    setLocale('fr')
    expect(formatDate(NEW_YEAR_ISO)).toBe('01/01/2026')
    setLocale('en')
    expect(formatDate(NEW_YEAR_ISO)).toBe('1/1/2026')
  })

  it('counts the year of a book in UTC', () => {
    process.env.TZ = tz
    expect(isoToUtcYear(NEW_YEAR_ISO)).toBe(2026)
    expect(isoToUtcYear(NEW_YEAR_END_ISO)).toBe(2025)
    const stats = computeAnneeStats([
      { id: 1, auteur_id: null, dateFinLecture: NEW_YEAR_ISO },
    ])
    expect(stats).toEqual([{ annee: 2026, count: 1 }])
  })

  it.each(STORED_FORMS)('reads stored timestamp %s as 28/09/2026', (stored) => {
    process.env.TZ = tz
    expect(isoToFrDate(stored)).toBe('28/09/2026')
    setLocale('fr')
    expect(formatDate(stored)).toBe('28/09/2026')
    expect(isoToUtcYear(stored)).toBe(2026)
  })

  it('round-trips picker -> ISO -> DB string without Z -> display', () => {
    process.env.TZ = tz
    const picked = new Date(2026, 8, 28)
    const iso = frDateToIso(dateToFrDate(picked))
    const dbValue = (iso as string).replace('Z', '').replace('T', ' ')
    expect(isoToFrDate(dbValue)).toBe('28/09/2026')
    expect(isoToFrDate(dbValue.replace(' ', 'T'))).toBe('28/09/2026')
  })

  it('returns a valid today date', () => {
    process.env.TZ = tz
    expect(todayFrDate()).toMatch(/^\d{2}\/\d{2}\/\d{4}$/)
  })
})

describe('parseStoredDate', () => {
  it('returns null for empty or invalid values', () => {
    expect(parseStoredDate(null)).toBeNull()
    expect(parseStoredDate('')).toBeNull()
    expect(parseStoredDate('garbage')).toBeNull()
  })
})

describe('isoToUtcYear', () => {
  it('returns null for empty or invalid values', () => {
    expect(isoToUtcYear(null)).toBeNull()
    expect(isoToUtcYear('not a date')).toBeNull()
  })
})
