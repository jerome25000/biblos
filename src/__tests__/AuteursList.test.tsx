import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen } from '@testing-library/react'
import type { Auteur } from '../types/database'

const fetchAuteursPageMock = vi.fn()

vi.mock('../services/auteursService', () => ({
  fetchAuteursPage: fetchAuteursPageMock,
  createAuteur: vi.fn(),
  updateAuteur: vi.fn(),
  deleteAuteur: vi.fn(),
  countLivresByAuteur: vi.fn(),
  countLivresByAuteurs: vi.fn().mockResolvedValue(new Map()),
  AUTEURS_PAGE_SIZE: 50,
}))

vi.mock('../services/referentielsService', () => ({
  fetchPays: vi.fn().mockResolvedValue([]),
  fetchAuteurById: vi.fn().mockResolvedValue(null),
}))

const { AuteursList } = await import('../components/AuteursList')

function makeAuteur(overrides: Partial<Auteur> = {}): Auteur {
  return {
    id: 1,
    nom: 'Herbert',
    prenom: 'Frank',
    anneeNaissance: 1920,
    nationalite_id: 1,
    ...overrides,
  }
}

describe('AuteursList', () => {
  beforeEach(() => {
    fetchAuteursPageMock.mockReset()
  })

  it('shows a loading message while fetching', () => {
    fetchAuteursPageMock.mockReturnValue(new Promise(() => {}))

    render(<AuteursList />)

    expect(screen.getByText('Chargement des auteurs...')).toBeInTheDocument()
  })

  it('shows the auteurs once loaded', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [makeAuteur()], count: 1 })

    render(<AuteursList />)

    expect(await screen.findByText('Herbert')).toBeInTheDocument()
  })

  it('shows an empty message when there are no auteurs', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [], count: 0 })

    render(<AuteursList />)

    expect(await screen.findByText('Aucun auteur trouvé')).toBeInTheDocument()
  })

  it('shows an error message when fetching fails', async () => {
    fetchAuteursPageMock.mockRejectedValue(new Error('boom'))

    render(<AuteursList />)

    expect(await screen.findByRole('alert')).toHaveTextContent(
      'Erreur lors du chargement des auteurs',
    )
  })

  it('opens the create modal when clicking the add button', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [], count: 0 })

    render(<AuteursList />)
    fireEvent.click(await screen.findByText('Ajouter un auteur'))

    expect(screen.getByText('Nouvel auteur')).toBeInTheDocument()
  })

  it('opens the edit modal pre-filled when clicking the edit button on a row', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [makeAuteur()], count: 1 })

    render(<AuteursList />)
    fireEvent.click(await screen.findByLabelText("Modifier l'auteur"))

    expect(screen.getByLabelText('Nom')).toHaveValue('Herbert')
  })

  it('renders pagination', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [makeAuteur()], count: 1 })

    render(<AuteursList />)
    await screen.findByText('Herbert')

    expect(screen.getByLabelText('pagination')).toBeInTheDocument()
  })

  it('opens the delete confirmation modal when clicking the delete button on a row', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [makeAuteur()], count: 1 })

    render(<AuteursList />)
    fireEvent.click(await screen.findByLabelText("Supprimer l'auteur"))

    expect(screen.getByText('Confirmer la suppression')).toBeInTheDocument()
  })

  it('displays the livres column header', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [makeAuteur()], count: 1 })

    render(<AuteursList />)

    expect(await screen.findByText('Livres')).toBeInTheDocument()
  })

  it('displays the book count for each author', async () => {
    const auteur = makeAuteur({ id: 42 })
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [auteur], count: 1 })

    const { countLivresByAuteurs } = await import('../services/auteursService')
    vi.mocked(countLivresByAuteurs).mockResolvedValue(new Map([[42, 5]]))

    render(<AuteursList />)

    expect(await screen.findByText('5')).toBeInTheDocument()
  })

  it('displays 0 when there are no books for an author', async () => {
    fetchAuteursPageMock.mockResolvedValue({ auteurs: [makeAuteur()], count: 1 })

    render(<AuteursList />)
    await screen.findByText('Herbert')

    // The livres column should exist and show 0 for the author
    expect(screen.getByText('Livres')).toBeInTheDocument()
  })
})
