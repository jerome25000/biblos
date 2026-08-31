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

  it('has all new view and card keys in both locales', () => {
    const keys = [
      'livres.view.showCards',
      'livres.view.showTable',
      'livres.card.imageAlt',
      'livres.card.description',
      'livres.card.commentaires',
    ]

    for (const key of keys) {
      expect(t(key as any)).toBeDefined()
      expect(t(key as any).length).toBeGreaterThan(0)

      setLocale('en')
      expect(t(key as any)).toBeDefined()
      expect(t(key as any).length).toBeGreaterThan(0)
      setLocale('fr')
    }
  })
})
