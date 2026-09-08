import { describe, it, expect } from 'vitest'
import { getDefaultViewMode } from '../services/utilities'
import { MOBILE_BREAKPOINT_PX } from '../constants'

describe('utilities', () => {
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
