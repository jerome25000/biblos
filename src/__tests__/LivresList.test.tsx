import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen } from '@testing-library/react'
import type { Livre } from '../types/database'

const fetchLivresMock = vi.fn()

vi.mock('../services/livresService', () => ({
  fetchLivres: fetchLivresMock,
  createLivre: vi.fn(),
  updateLivre: vi.fn(),
  PAGE_SIZE: 50,
}))

vi.mock('../services/referentielsService', () => ({
  fetchAuteurs: vi.fn().mockResolvedValue([]),
  fetchEditeurs: vi.fn().mockResolvedValue([]),
  fetchGenres: vi.fn().mockResolvedValue([]),
  fetchTypesLivre: vi.fn().mockResolvedValue([]),
}))

const { LivresList } = await import('../components/LivresList')

function makeLivre(overrides: Partial<Livre> = {}): Livre {
  return {
    id: 1,
    titre: 'Dune',
    titreVo: null,
    numEdition: null,
    anneePremiereEdition: 1965,
    numEditeur_id: 1,
    genre_id: 1,
    typeLivre_id: 1,
    auteur_id: null,
    illustrateur_id: null,
    collection: false,
    serie: null,
    num_serie: null,
    dateSaisie: null,
    dateDebutLecture: '2024-01-01',
    dateFinLecture: null,
    note: null,
    image: null,
    description: null,
    commentaires: null,
    dedicace: null,
    emprunteur: null,
    ...overrides,
  }
}

describe('LivresList', () => {
  beforeEach(() => {
    fetchLivresMock.mockReset()
  })

  it('shows a loading message while fetching', () => {
    fetchLivresMock.mockReturnValue(new Promise(() => {}))

    render(<LivresList />)

    expect(screen.getByText('Chargement des livres...')).toBeInTheDocument()
  })

  it('shows the books once loaded', async () => {
    fetchLivresMock.mockResolvedValue({ livres: [makeLivre()], count: 1 })

    render(<LivresList />)

    expect(await screen.findByText('Dune')).toBeInTheDocument()
  })

  it('shows an empty message when there are no books', async () => {
    fetchLivresMock.mockResolvedValue({ livres: [], count: 0 })

    render(<LivresList />)

    expect(await screen.findByText('Aucun livre trouvé')).toBeInTheDocument()
  })

  it('shows an error message when fetching fails', async () => {
    fetchLivresMock.mockRejectedValue(new Error('boom'))

    render(<LivresList />)

    expect(await screen.findByRole('alert')).toHaveTextContent(
      'Erreur lors du chargement des livres',
    )
  })

  it('opens the create modal when clicking the add button', async () => {
    fetchLivresMock.mockResolvedValue({ livres: [], count: 0 })

    render(<LivresList />)
    fireEvent.click(await screen.findByText('Ajouter un livre'))

    expect(screen.getByText('Nouveau livre')).toBeInTheDocument()
  })

  it('opens the edit modal pre-filled when clicking the edit button on a row', async () => {
    fetchLivresMock.mockResolvedValue({ livres: [makeLivre()], count: 1 })

    render(<LivresList />)
    fireEvent.click(await screen.findByLabelText('Modifier le livre'))

    expect(screen.getByText('Modifier le livre')).toBeInTheDocument()
    expect(screen.getByLabelText('Titre')).toHaveValue('Dune')
  })
})
