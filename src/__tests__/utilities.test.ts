import { describe, it, expect } from 'vitest'
import {
  countByKey,
  dateToFrDate,
  frDateToDate,
  getDefaultViewMode,
  sortCountEntriesByKeyDesc,
  topCountEntries,
} from '../services/utilities'
import { MOBILE_BREAKPOINT_PX } from '../constants'

describe('utilities', () => {
  describe('frDateToDate', () => {
    it('returns null for an empty value', () => {
      expect(frDateToDate('')).toBeNull()
    })

    it('returns null for an invalid date', () => {
      expect(frDateToDate('31/02/2024')).toBeNull()
      expect(frDateToDate('not-a-date')).toBeNull()
    })

    it('parses a valid fr date into a Date', () => {
      const date = frDateToDate('05/03/2024')
      expect(date).not.toBeNull()
      expect(date?.getDate()).toBe(5)
      expect(date?.getMonth()).toBe(2)
      expect(date?.getFullYear()).toBe(2024)
    })
  })

  describe('dateToFrDate', () => {
    it('returns an empty string for null', () => {
      expect(dateToFrDate(null)).toBe('')
    })

    it('formats a Date into a fr date string', () => {
      expect(dateToFrDate(new Date(2024, 2, 5))).toBe('05/03/2024')
    })

    it('round-trips with frDateToDate', () => {
      expect(dateToFrDate(frDateToDate('25/12/2023'))).toBe('25/12/2023')
    })
  })

  describe('getDefaultViewMode', () => {
    it('returns "cards" for viewport below mobile breakpoint', () => {
      expect(getDefaultViewMode(360)).toBe('cards')
      expect(getDefaultViewMode(767)).toBe('cards')
    })

    it('returns "table" for viewport at or above mobile breakpoint', () => {
      expect(getDefaultViewMode(768)).toBe('table')
      expect(getDefaultViewMode(1024)).toBe('table')
      expect(getDefaultViewMode(1920)).toBe('table')
    })

    it('respects MOBILE_BREAKPOINT_PX constant', () => {
      expect(getDefaultViewMode(MOBILE_BREAKPOINT_PX - 1)).toBe('cards')
      expect(getDefaultViewMode(MOBILE_BREAKPOINT_PX)).toBe('table')
    })
  })

  describe('countByKey', () => {
    it('returns an empty map for an empty array', () => {
      expect(countByKey([], () => 1)).toEqual(new Map())
    })

    it('counts items grouped by key', () => {
      const items = [{ k: 'a' }, { k: 'b' }, { k: 'a' }]
      expect(countByKey(items, (item) => item.k)).toEqual(
        new Map([
          ['a', 2],
          ['b', 1],
        ]),
      )
    })

    it('ignores items whose key is null', () => {
      const items = [{ k: 'a' as string | null }, { k: null }]
      expect(countByKey(items, (item) => item.k)).toEqual(new Map([['a', 1]]))
    })
  })

  describe('sortCountEntriesByKeyDesc', () => {
    it('returns an empty array for an empty map', () => {
      expect(sortCountEntriesByKeyDesc(new Map())).toEqual([])
    })

    it('sorts entries by numeric key descending', () => {
      const counts = new Map([
        [2024, 3],
        [2021, 1],
        [2023, 2],
      ])
      expect(sortCountEntriesByKeyDesc(counts)).toEqual([
        { key: 2024, count: 3 },
        { key: 2023, count: 2 },
        { key: 2021, count: 1 },
      ])
    })
  })

  describe('topCountEntries', () => {
    it('returns an empty array for an empty map', () => {
      expect(topCountEntries(new Map(), 5)).toEqual([])
    })

    it('returns entries sorted by count descending', () => {
      const counts = new Map([
        [1, 1],
        [2, 5],
        [3, 3],
      ])
      expect(topCountEntries(counts, 10)).toEqual([
        { key: 2, count: 5 },
        { key: 3, count: 3 },
        { key: 1, count: 1 },
      ])
    })

    it('limits the number of returned entries', () => {
      const counts = new Map([
        [1, 1],
        [2, 2],
        [3, 3],
      ])
      expect(topCountEntries(counts, 2)).toEqual([
        { key: 3, count: 3 },
        { key: 2, count: 2 },
      ])
    })
  })
})
