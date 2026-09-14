import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import type { Livre, Auteur } from '../types/database'

const fetchEmpruntsMock = vi.fn()
const returnLivreMock = vi.fn()
const fetchAuteursMock = vi.fn()

vi.mock('../services/empruntsService', () => ({
  fetchEmprunts: fetchEmpruntsMock,
  returnLivre: returnLivreMock,
  EMPRUNTS_PAGE_SIZE: 50,
}))

vi.mock('../services/referentielsService', () => ({
  fetchAuteurs: fetchAuteursMock,
}))

vi.mock('../contexts/AuthContext', () => {
  const mockUseAuth = vi.fn(() => ({ session: null, isGuest: false, loading: false }))
  return {
    useAuth: mockUseAuth,
    AuthProvider: ({ children }: { children: unknown }) => children,
  }
})

const { EmpruntsList } = await import('../components/EmpruntsList')

function makeLivre(overrides: Partial<Livre> = {}): Livre {
  return {
    id: 1,
    titre: 'Test Book',
    titreVo: null,
    numEdition: null,
    anneePremiereEdition: 2020,
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
    emprunteur: 'John Doe',
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

describe('EmpruntsList', () => {
  beforeEach(() => {
    fetchEmpruntsMock.mockReset()
    returnLivreMock.mockReset()
    fetchAuteursMock.mockReset()
    fetchAuteursMock.mockResolvedValue([makeAuteur()])
  })

  it('shows a loading message while fetching', () => {
    fetchEmpruntsMock.mockReturnValue(new Promise(() => {}))

    render(<EmpruntsList />)

    expect(screen.getByText('Chargement des emprunts...')).toBeInTheDocument()
  })

  it('shows the borrowed books once loaded', async () => {
    fetchEmpruntsMock.mockResolvedValue({ livres: [makeLivre()], count: 1 })

    render(<EmpruntsList />)

    expect(await screen.findByText('Test Book')).toBeInTheDocument()
    expect(screen.getAllByText('John Doe')).toHaveLength(2)
  })

  it('displays author name from the author map', async () => {
    fetchEmpruntsMock.mockResolvedValue({ livres: [makeLivre()], count: 1 })

    render(<EmpruntsList />)

    expect(await screen.findByText('Test Book')).toBeInTheDocument()
    expect(screen.getAllByText('John Doe')).toHaveLength(2)
  })

  it('shows an empty message when there are no borrowed books', async () => {
    fetchEmpruntsMock.mockResolvedValue({ livres: [], count: 0 })

    render(<EmpruntsList />)

    expect(await screen.findByText('Aucun livre actuellement emprunté')).toBeInTheDocument()
  })

  it('shows an error message when fetching fails', async () => {
    fetchEmpruntsMock.mockRejectedValue(new Error('boom'))

    render(<EmpruntsList />)

    expect(await screen.findByRole('alert')).toHaveTextContent(
      'Erreur lors du chargement des emprunts',
    )
  })

  it('removes a book from the list when clicking the return button', async () => {
    const livre = makeLivre({ id: 1, titre: 'Book to Return' })
    fetchEmpruntsMock.mockResolvedValue({ livres: [livre], count: 1 })
    returnLivreMock.mockResolvedValue(undefined)

    render(<EmpruntsList />)
    await screen.findByText('Book to Return')

    const returnButton = await screen.findByLabelText('Rendu')
    fireEvent.click(returnButton)

    expect(returnLivreMock).toHaveBeenCalledWith(1)
    await waitFor(() => {
      expect(screen.queryByText('Book to Return')).not.toBeInTheDocument()
    })
  })

  it('renders pagination', async () => {
    fetchEmpruntsMock.mockResolvedValue({ livres: [makeLivre()], count: 1 })

    render(<EmpruntsList />)
    await screen.findByText('Test Book')

    expect(screen.getByLabelText('pagination')).toBeInTheDocument()
  })

  it('shows table columns with correct headers', async () => {
    fetchEmpruntsMock.mockResolvedValue({ livres: [makeLivre()], count: 1 })

    render(<EmpruntsList />)
    await screen.findByText('Test Book')

    expect(screen.getByText('Titre')).toBeInTheDocument()
    expect(screen.getByText('Auteur')).toBeInTheDocument()
    expect(screen.getByText('Emprunteur')).toBeInTheDocument()
  })
})
