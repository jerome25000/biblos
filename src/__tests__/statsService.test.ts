import { describe, it, expect, vi, beforeEach } from 'vitest'
import { SUPABASE_FETCH_PAGE_SIZE } from '../constants'
import { supabase } from '../supabaseClient'
import { computeAnneeStats, computeTopAuteurStats, fetchLivresLus } from '../services/statsService'
import type { LivreLu } from '../services/statsService'
import type { Auteur } from '../types/database'

vi.mock('../supabaseClient', () => ({ supabase: { from: vi.fn() } }))

function mockPages(results: { data: LivreLu[] | null; error: unknown }[]) {
  const range = vi.fn()
  results.forEach((r) => range.mockResolvedValueOnce(r))
  const order = vi.fn(() => ({ range }))
  const not = vi.fn(() => ({ order }))
  const select = vi.fn(() => ({ not }))
  vi.mocked(supabase.from).mockReturnValue({ select } as never)
  return { range, order }
}

function makeRows(count: number, startId = 1): LivreLu[] {
  return Array.from({ length: count }, (_, i) => makeLivreLu({ id: startId + i }))
}

function makeLivreLu(overrides: Partial<LivreLu> = {}): LivreLu {
  return {
    id: 1,
    auteur_id: 1,
    dateFinLecture: '2024-05-01T00:00:00.000Z',
    ...overrides,
  }
}

function makeAuteur(overrides: Partial<Auteur> = {}): Auteur {
  return {
    id: 1,
    nom: 'Doe',
    prenom: 'John',
    anneeNaissance: 1980,
    nationalite_id: 1,
    ...overrides,
  }
}

describe('statsService', () => {
  describe('computeAnneeStats', () => {
    it('returns an empty array when there are no books', () => {
      expect(computeAnneeStats([])).toEqual([])
    })

    it('groups books read by year', () => {
      const livres = [
        makeLivreLu({ id: 1, dateFinLecture: '2023-01-15T00:00:00.000Z' }),
        makeLivreLu({ id: 2, dateFinLecture: '2024-06-01T00:00:00.000Z' }),
        makeLivreLu({ id: 3, dateFinLecture: '2024-08-20T00:00:00.000Z' }),
      ]

      expect(computeAnneeStats(livres)).toEqual([
        { annee: 2024, count: 2 },
        { annee: 2023, count: 1 },
      ])
    })

    it('sorts years descending', () => {
      const livres = [
        makeLivreLu({ id: 1, dateFinLecture: '2025-01-01T00:00:00.000Z' }),
        makeLivreLu({ id: 2, dateFinLecture: '2021-01-01T00:00:00.000Z' }),
        makeLivreLu({ id: 3, dateFinLecture: '2023-01-01T00:00:00.000Z' }),
      ]

      expect(computeAnneeStats(livres).map((s) => s.annee)).toEqual([2025, 2023, 2021])
    })

    it('ignores books with no dateFinLecture', () => {
      const livres = [
        makeLivreLu({ id: 1, dateFinLecture: null }),
        makeLivreLu({ id: 2, dateFinLecture: '2024-01-01T00:00:00.000Z' }),
      ]

      expect(computeAnneeStats(livres)).toEqual([{ annee: 2024, count: 1 }])
    })
  })

  describe('computeTopAuteurStats', () => {
    it('returns an empty array when there are no books', () => {
      expect(computeTopAuteurStats([], [])).toEqual([])
    })

    it('counts books per author and sorts by count descending', () => {
      const auteurs = [
        makeAuteur({ id: 1, nom: 'Doe', prenom: 'John' }),
        makeAuteur({ id: 2, nom: 'Smith', prenom: 'Anna' }),
      ]
      const livres = [
        makeLivreLu({ id: 1, auteur_id: 1 }),
        makeLivreLu({ id: 2, auteur_id: 2 }),
        makeLivreLu({ id: 3, auteur_id: 2 }),
      ]

      const result = computeTopAuteurStats(livres, auteurs)

      expect(result).toEqual([
        { auteurId: 2, nom: 'Anna Smith', count: 2 },
        { auteurId: 1, nom: 'John Doe', count: 1 },
      ])
    })

    it('limits results to STATS_TOP_AUTEURS_LIMIT entries', () => {
      const auteurs = Array.from({ length: 15 }, (_, i) =>
        makeAuteur({ id: i + 1, nom: `Nom${i + 1}`, prenom: 'P' }),
      )
      const livres = auteurs.map((auteur) => makeLivreLu({ id: auteur.id, auteur_id: auteur.id }))

      expect(computeTopAuteurStats(livres, auteurs)).toHaveLength(10)
    })

    it('ignores books with no auteur_id', () => {
      const livres = [makeLivreLu({ id: 1, auteur_id: null })]

      expect(computeTopAuteurStats(livres, [])).toEqual([])
    })

    it('returns an empty name when the author is unknown', () => {
      const livres = [makeLivreLu({ id: 1, auteur_id: 42 })]

      expect(computeTopAuteurStats(livres, [])).toEqual([
        { auteurId: 42, nom: '', count: 1 },
      ])
    })
  })

  describe('fetchLivresLus', () => {
    const size = SUPABASE_FETCH_PAGE_SIZE

    beforeEach(() => {
      vi.clearAllMocks()
    })

    it('fetches several pages ordered by id until a short page', async () => {
      const { range, order } = mockPages([
        { data: makeRows(size), error: null },
        { data: makeRows(5, size + 1), error: null },
      ])

      const result = await fetchLivresLus()

      expect(result).toHaveLength(size + 5)
      expect(order).toHaveBeenCalledWith('id', { ascending: true })
      expect(range).toHaveBeenNthCalledWith(1, 0, size - 1)
      expect(range).toHaveBeenNthCalledWith(2, size, 2 * size - 1)
      expect(range).toHaveBeenCalledTimes(2)
    })

    it('requests an extra empty page when the total is an exact multiple', async () => {
      const { range } = mockPages([
        { data: makeRows(size), error: null },
        { data: [], error: null },
      ])

      const result = await fetchLivresLus()

      expect(result).toHaveLength(size)
      expect(range).toHaveBeenCalledTimes(2)
    })

    it('returns an empty array when there is no data', async () => {
      mockPages([{ data: [], error: null }])
      expect(await fetchLivresLus()).toEqual([])
    })

    it('treats null data as empty', async () => {
      mockPages([{ data: null, error: null }])
      expect(await fetchLivresLus()).toEqual([])
    })

    it('propagates errors, including from a later page', async () => {
      const error = new Error('boom')
      mockPages([
        { data: makeRows(size), error: null },
        { data: null, error },
      ])
      await expect(fetchLivresLus()).rejects.toBe(error)
    })
  })
})
