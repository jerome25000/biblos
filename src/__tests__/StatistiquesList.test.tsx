import { describe, expect, it, vi, beforeEach } from 'vitest'
import { render, screen } from '@testing-library/react'

const fetchLivresLusMock = vi.fn()
const fetchAuteursMock = vi.fn()

vi.mock('../services/statsService', async () => {
  const actual = await vi.importActual<typeof import('../services/statsService')>(
    '../services/statsService',
  )
  return {
    ...actual,
    fetchLivresLus: fetchLivresLusMock,
  }
})

vi.mock('../services/referentielsService', () => ({
  fetchAuteurs: fetchAuteursMock,
}))

const { StatistiquesList } = await import('../components/StatistiquesList')

describe('StatistiquesList', () => {
  beforeEach(() => {
    fetchLivresLusMock.mockReset()
    fetchAuteursMock.mockReset()
    fetchAuteursMock.mockResolvedValue([])
  })

  it('shows a loading message while fetching', () => {
    fetchLivresLusMock.mockReturnValue(new Promise(() => {}))

    render(<StatistiquesList />)

    expect(screen.getByText('Chargement des statistiques...')).toBeInTheDocument()
  })

  it('shows an error message when fetching fails', async () => {
    fetchLivresLusMock.mockRejectedValue(new Error('boom'))

    render(<StatistiquesList />)

    expect(await screen.findByRole('alert')).toHaveTextContent(
      'Erreur lors du chargement des statistiques',
    )
  })

  it('shows empty messages when there is no data', async () => {
    fetchLivresLusMock.mockResolvedValue([])

    render(<StatistiquesList />)

    expect(await screen.findAllByText('Aucune donnée disponible')).toHaveLength(2)
  })

  it('displays books read per year and top authors once loaded', async () => {
    fetchLivresLusMock.mockResolvedValue([
      { id: 1, auteur_id: 1, dateFinLecture: '2024-01-01T00:00:00.000Z' },
      { id: 2, auteur_id: 1, dateFinLecture: '2024-06-01T00:00:00.000Z' },
    ])
    fetchAuteursMock.mockResolvedValue([
      { id: 1, nom: 'Doe', prenom: 'John', anneeNaissance: 1980, nationalite_id: 1 },
    ])

    render(<StatistiquesList />)

    expect(await screen.findByText('2024')).toBeInTheDocument()
    expect(screen.getByText('John Doe')).toBeInTheDocument()
    expect(screen.getAllByText('2')).toHaveLength(2)
  })
})
