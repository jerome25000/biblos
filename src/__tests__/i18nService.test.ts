import { describe, expect, it, afterEach } from 'vitest'
import { getLocale, setLocale, t } from '../services/i18nService'

describe('i18nService', () => {
  afterEach(() => {
    setLocale('fr')
  })

  it('returns french labels by default', () => {
    expect(getLocale()).toBe('fr')
    expect(t('login.title')).toBe('Connexion')
  })

  it('returns english labels once locale is switched', () => {
    setLocale('en')
    expect(t('login.title')).toBe('Login')
  })

  it('interpolates params in a translation', () => {
    expect(t('pagination.pageInfo', { page: 2, totalPages: 5 })).toBe(
      'Page 2 sur 5',
    )
  })
})
