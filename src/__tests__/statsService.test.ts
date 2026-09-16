import { describe, it, expect } from 'vitest'
import { computeAnneeStats, computeTopAuteurStats } from '../services/statsService'
import type { LivreLu } from '../services/statsService'
import type { Auteur } from '../types/database'

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
        { annee: 2023, count: 1 },
        { annee: 2024, count: 2 },
      ])
    })

    it('sorts years ascending', () => {
      const livres = [
        makeLivreLu({ id: 1, dateFinLecture: '2025-01-01T00:00:00.000Z' }),
        makeLivreLu({ id: 2, dateFinLecture: '2021-01-01T00:00:00.000Z' }),
        makeLivreLu({ id: 3, dateFinLecture: '2023-01-01T00:00:00.000Z' }),
      ]

      expect(computeAnneeStats(livres).map((s) => s.annee)).toEqual([2021, 2023, 2025])
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
})
