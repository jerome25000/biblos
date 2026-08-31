import { describe, expect, it } from 'vitest'
import {
  calculateTooltipPosition,
  emptyToNull,
  formatDate,
  frDateToIso,
  isoToFrDate,
  isValidFrDate,
  pageToRange,
  todayFrDate,
  totalPages,
  formatBytes,
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

  it('formats a timezone-naive ISO date as DD/MM/YYYY', () => {
    expect(isoToFrDate('2024-03-05T00:00:00')).toBe('05/03/2024')
  })

  it('formats a UTC-suffixed ISO date as DD/MM/YYYY', () => {
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

describe('calculateTooltipPosition', () => {
  const anchor = { top: 300, left: 400, width: 100, height: 20 }

  it('places the bubble above the anchor using viewport-relative coordinates only', () => {
    // Regression: position: fixed uses viewport coordinates, so scroll offsets
    // must never be added here (that was the bug that sent the tooltip off-screen).
    const result = calculateTooltipPosition(anchor, 200, 50, 1200, 800)
    expect(result.top).toBe(anchor.top - 50 - 10)
  })

  it('centers the bubble horizontally on the anchor', () => {
    const result = calculateTooltipPosition(anchor, 200, 50, 1200, 800)
    expect(result.left).toBe(anchor.left + anchor.width / 2 - 200 / 2)
  })

  it('clamps left position when the bubble would overflow the left edge', () => {
    const nearLeftAnchor = { top: 300, left: 5, width: 20, height: 20 }
    const result = calculateTooltipPosition(nearLeftAnchor, 200, 50, 1200, 800)
    expect(result.left).toBe(10)
  })

  it('clamps left position when the bubble would overflow the right edge', () => {
    const nearRightAnchor = { top: 300, left: 1180, width: 20, height: 20 }
    const result = calculateTooltipPosition(nearRightAnchor, 200, 50, 1200, 800)
    expect(result.left).toBe(1200 - 200 - 10)
  })

  it('flips the bubble below the anchor when there is no room above', () => {
    const nearTopAnchor = { top: 5, left: 400, width: 100, height: 20 }
    const result = calculateTooltipPosition(nearTopAnchor, 200, 50, 1200, 800)
    expect(result.top).toBe(nearTopAnchor.top + nearTopAnchor.height + 10)
  })
})

describe('formatBytes', () => {
  it('returns "0 bytes" for zero bytes', () => {
    expect(formatBytes(0)).toBe('0 bytes')
  })

  it('formats bytes in KB range', () => {
    const result = formatBytes(1024)
    expect(result).toMatch(/^1\.00 KB$/)
  })

  it('formats bytes in KB with decimals', () => {
    const result = formatBytes(1536)
    expect(result).toMatch(/^1\.5[0-9] KB$/)
  })

  it('formats bytes in MB range', () => {
    const result = formatBytes(1024 * 1024)
    expect(result).toMatch(/^1\.00 MB$/)
  })

  it('formats large byte values correctly', () => {
    const result = formatBytes(2560000)
    expect(result).toMatch(/^2\.[0-9]{2} MB$/)
  })
})
