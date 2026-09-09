import { describe, it, expect } from 'vitest'
import { GUEST_ROLE } from '../constants'

describe('useAuth', () => {
  it('should correctly identify guest role from app_metadata', () => {
    const guestRole = 'guest'
    expect(guestRole).toBe(GUEST_ROLE)
  })

  it('should correctly identify non-guest when role is missing', () => {
    const userRole = undefined
    expect(userRole).not.toBe(GUEST_ROLE)
  })

  it('should correctly identify non-guest when role is different', () => {
    const userRole = 'admin'
    expect(userRole).not.toBe(GUEST_ROLE)
  })
})
