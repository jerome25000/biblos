import { describe, expect, it } from 'vitest'
import {
  emptyToNull,
  formatDate,
  frDateToIso,
  isoToFrDate,
  isValidFrDate,
  pageToRange,
  todayFrDate,
  totalPages,
} from '../services/utilities'

describe('formatDate', () => {
  it('returns an empty string for null values', () => {
    expect(formatDate(null)).toBe('')
  })

  it('returns an empty string for invalid dates', () => {
    expect(formatDate('not-a-date')).toBe('')
  })

  it('formats a valid ISO date', () => {
    expect(formatDate('2024-03-15T00:00:00Z')).not.toBe('')
  })
})

describe('pageToRange', () => {
  it('computes the range for the first page', () => {
    expect(pageToRange(1, 50)).toEqual({ from: 0, to: 49 })
  })

  it('computes the range for a later page', () => {
    expect(pageToRange(3, 50)).toEqual({ from: 100, to: 149 })
  })
})

describe('totalPages', () => {
  it('rounds up partial pages', () => {
    expect(totalPages(101, 50)).toBe(3)
  })

  it('returns at least 1 page when count is 0', () => {
    expect(totalPages(0, 50)).toBe(1)
  })
})

describe('isoToFrDate', () => {
  it('returns an empty string for null values', () => {
    expect(isoToFrDate(null)).toBe('')
  })

  it('returns an empty string for invalid dates', () => {
    expect(isoToFrDate('not-a-date')).toBe('')
  })

  it('formats an ISO date as DD/MM/YYYY', () => {
    expect(isoToFrDate('2024-03-05T00:00:00.000Z')).toBe('05/03/2024')
  })
})

describe('frDateToIso', () => {
  it('returns null for an empty value', () => {
    expect(frDateToIso('')).toBeNull()
  })

  it('returns null for a malformed value', () => {
    expect(frDateToIso('2024-03-05')).toBeNull()
  })

  it('returns null for an invalid calendar date', () => {
    expect(frDateToIso('31/02/2024')).toBeNull()
  })

  it('converts a valid DD/MM/YYYY date to ISO', () => {
    expect(frDateToIso('05/03/2024')).toBe('2024-03-05T00:00:00.000Z')
  })
})

describe('isValidFrDate', () => {
  it('accepts an empty value', () => {
    expect(isValidFrDate('')).toBe(true)
  })

  it('accepts a valid date', () => {
    expect(isValidFrDate('05/03/2024')).toBe(true)
  })

  it('rejects an invalid date', () => {
    expect(isValidFrDate('31/02/2024')).toBe(false)
  })
})

describe('todayFrDate', () => {
  it('returns a DD/MM/YYYY formatted date', () => {
    expect(todayFrDate()).toMatch(/^\d{2}\/\d{2}\/\d{4}$/)
  })
})

describe('emptyToNull', () => {
  it('returns null for an empty string', () => {
    expect(emptyToNull('')).toBeNull()
  })

  it('returns null for a blank string', () => {
    expect(emptyToNull('   ')).toBeNull()
  })

  it('returns the trimmed value otherwise', () => {
    expect(emptyToNull('  hello  ')).toBe('hello')
  })
})
