import { describe, it, expect } from 'vitest'
import { readFileSync } from 'fs'
import { resolve } from 'path'

const config = JSON.parse(readFileSync(resolve(__dirname, '../../vercel.json'), 'utf-8'))
const headers: Record<string, string> = Object.fromEntries(
  config.headers[0].headers.map((h: { key: string; value: string }) => [h.key, h.value]),
)
const csp = headers['Content-Security-Policy']

describe('vercel.json security headers', () => {
  it('applies to all routes', () => {
    expect(config.headers[0].source).toBe('/(.*)')
  })

  it('has a strict CSP', () => {
    expect(csp).toContain("default-src 'self'")
    expect(csp).toContain("object-src 'none'")
    expect(csp).toContain("frame-ancestors 'none'")
    expect(csp).not.toContain('unsafe-inline')
    expect(csp).not.toContain('unsafe-eval')
    expect(csp).not.toContain('*')
  })

  it('whitelists only the Supabase origin', () => {
    expect(csp).toMatch(/connect-src 'self' https:\/\/[a-z0-9]+\.supabase\.co;/)
  })

  it('sets the other security headers', () => {
    expect(headers['Referrer-Policy']).toBe('strict-origin-when-cross-origin')
    expect(headers['X-Content-Type-Options']).toBe('nosniff')
    expect(headers['X-Frame-Options']).toBe('DENY')
    expect(headers['Permissions-Policy']).toContain('camera=()')
    expect(headers['Strict-Transport-Security']).toContain('max-age=')
  })
})

describe('vercel.json SPA fallback', () => {
  it('rewrites unknown paths to index.html so deep links survive a refresh', () => {
    expect(config.rewrites).toContainEqual({ source: '/(.*)', destination: '/index.html' })
  })
})
