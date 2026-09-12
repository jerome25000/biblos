import { describe, it, expect } from 'vitest'
import {
  dateToFrDate,
  frDateToDate,
  getDefaultViewMode,
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
})
