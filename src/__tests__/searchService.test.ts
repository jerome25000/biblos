import { describe, it, expect, beforeEach, vi } from 'vitest'
import type { Auteur, Editeur, Livre } from '../types/database'

const limitMock = vi.fn(function (this: any) {
  return { ...this, range: rangeMock }
})
const orderMock = vi.fn(function (this: any) {
  return { ...this, limit: limitMock }
})
const orMock = vi.fn(function (this: any) {
  return { ...this, order: orderMock }
})
const ilikeMock = vi.fn(function (this: any) {
  return { ...this, order: orderMock }
})
const selectMock = vi.fn(function (this: any) {
  return {
    or: orMock,
    ilike: ilikeMock,
    order: orderMock,
    limit: limitMock,
  }
})
const rangeMock = vi.fn().mockResolvedValue({ data: [], error: null })

const fromMock = vi.fn(() => ({
  select: selectMock,
}))

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const {
  searchAuteurSuggestions,
  searchEditeurSuggestions,
  searchTitreSuggestions,
} = await import('../services/searchService')

describe('searchService', () => {
  beforeEach(() => {
    fromMock.mockClear()
    selectMock.mockClear()
    orMock.mockClear()
    ilikeMock.mockClear()
    orderMock.mockClear()
    limitMock.mockClear()
    rangeMock.mockClear()
  })

  describe('searchAuteurSuggestions', () => {
    it('returns empty array if query is empty', async () => {
      const result = await searchAuteurSuggestions('')
      expect(result).toEqual([])
      expect(fromMock).not.toHaveBeenCalled()
    })

    it('returns empty array if query is less than 2 characters', async () => {
      const result = await searchAuteurSuggestions('a')
      expect(result).toEqual([])
      expect(fromMock).not.toHaveBeenCalled()
    })

    it('fetches auteur suggestions with ilike filter', async () => {
      const mockData: Auteur[] = [
        {
          id: 1,
          nom: 'Hugo',
          prenom: 'Victor',
          anneeNaissance: 1802,
          nationalite_id: 1,
        },
      ]

      limitMock.mockResolvedValue({ data: mockData, error: null })

      const result = await searchAuteurSuggestions('ug')
      expect(result).toEqual(mockData)
      expect(fromMock).toHaveBeenCalledWith('livres_auteur')
      expect(selectMock).toHaveBeenCalledWith('*')
      expect(orMock).toHaveBeenCalledWith('nom.ilike.%ug%,prenom.ilike.%ug%')
      expect(orderMock).toHaveBeenCalledWith('nom', { ascending: true })
      expect(limitMock).toHaveBeenCalledWith(10)
    })

    it('throws when supabase returns an error', async () => {
      limitMock.mockResolvedValue({ data: null, error: new Error('DB error') })

      await expect(searchAuteurSuggestions('test')).rejects.toThrow('DB error')
    })
  })

  describe('searchEditeurSuggestions', () => {
    it('returns empty array if query is empty', async () => {
      const result = await searchEditeurSuggestions('')
      expect(result).toEqual([])
      expect(fromMock).not.toHaveBeenCalled()
    })

    it('fetches editeur suggestions with ilike filter', async () => {
      const mockData: Editeur[] = [
        { id: 1, nom: 'Gallimard', adresse: 'Paris' },
      ]

      limitMock.mockResolvedValue({ data: mockData, error: null })

      const result = await searchEditeurSuggestions('gal')
      expect(result).toEqual(mockData)
      expect(fromMock).toHaveBeenCalledWith('livres_editeur')
      expect(selectMock).toHaveBeenCalledWith('*')
      expect(ilikeMock).toHaveBeenCalledWith('nom', '%gal%')
      expect(orderMock).toHaveBeenCalledWith('nom', { ascending: true })
      expect(limitMock).toHaveBeenCalledWith(10)
    })
  })

  describe('searchTitreSuggestions', () => {
    it('returns empty array if query is empty', async () => {
      const result = await searchTitreSuggestions('')
      expect(result).toEqual([])
      expect(fromMock).not.toHaveBeenCalled()
    })

    it('fetches titre suggestions with ilike filter', async () => {
      const mockData: Livre[] = [
        {
          id: 1,
          titre: 'Les Misérables',
          titreVo: null,
          numEdition: 1,
          anneePremiereEdition: 1862,
          numEditeur_id: 1,
          genre_id: 1,
          typeLivre_id: 1,
          auteur_id: 1,
          illustrateur_id: null,
          collection: false,
          serie: null,
          num_serie: null,
          dateSaisie: null,
          dateDebutLecture: null,
          dateFinLecture: null,
          note: null,
          image: null,
          description: null,
          commentaires: null,
          dedicace: null,
          emprunteur: null,
        },
      ]

      limitMock.mockResolvedValue({ data: mockData, error: null })

      const result = await searchTitreSuggestions('mis')
      expect(result).toEqual(mockData)
      expect(fromMock).toHaveBeenCalledWith('livres_livres')
      expect(selectMock).toHaveBeenCalledWith('*')
      expect(ilikeMock).toHaveBeenCalledWith('titre', '%mis%')
      expect(orderMock).toHaveBeenCalledWith('titre', { ascending: true })
      expect(limitMock).toHaveBeenCalledWith(10)
    })
  })
})
