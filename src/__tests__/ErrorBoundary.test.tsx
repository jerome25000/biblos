import { describe, it, expect, vi, beforeEach, afterEach } from 'vitest'
import { render, screen } from '@testing-library/react'
import { ErrorBoundary } from '../components/ErrorBoundary'
import { setLocale, t } from '../services/i18nService'

function Bomb(): never {
  throw new Error('boom')
}

describe('ErrorBoundary', () => {
  beforeEach(() => {
    vi.spyOn(console, 'error').mockImplementation(() => {})
  })

  afterEach(() => {
    vi.restoreAllMocks()
    setLocale('fr')
  })

  it('renders children when healthy', () => {
    render(<ErrorBoundary><p>ok</p></ErrorBoundary>)
    expect(screen.getByText('ok')).toBeInTheDocument()
  })

  it.each(['fr', 'en'] as const)('shows fallback in %s', (locale) => {
    setLocale(locale)
    render(<ErrorBoundary><Bomb /></ErrorBoundary>)
    expect(screen.getByRole('alert')).toBeInTheDocument()
    expect(screen.getByText(t('errorBoundary.title'))).toBeInTheDocument()
    expect(screen.getByText(t('errorBoundary.message'))).toBeInTheDocument()
    expect(screen.getByRole('button', { name: t('errorBoundary.reload') })).toBeInTheDocument()
  })

  it('has distinct fr and en labels', () => {
    setLocale('fr')
    const fr = t('errorBoundary.title')
    setLocale('en')
    expect(t('errorBoundary.title')).not.toBe(fr)
  })
})
