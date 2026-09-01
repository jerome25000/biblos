import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen } from '@testing-library/react'
import type { Editeur } from '../types/database'

const fetchEditeursPageMock = vi.fn()

vi.mock('../services/editeursService', () => ({
  fetchEditeursPage: fetchEditeursPageMock,
  createEditeur: vi.fn(),
  updateEditeur: vi.fn(),
  deleteEditeur: vi.fn(),
  countLivresByEditeur: vi.fn(),
  EDITEURS_PAGE_SIZE: 50,
}))

vi.mock('../services/referentielsService', () => ({
  fetchEditeurById: vi.fn().mockResolvedValue(null),
}))

const { EditeursList } = await import('../components/EditeursList')

function makeEditeur(overrides: Partial<Editeur> = {}): Editeur {
  return {
    id: 1,
    nom: 'Penguin',
    adresse: '123 Street',
    ...overrides,
  }
}

describe('EditeursList', () => {
  beforeEach(() => {
    fetchEditeursPageMock.mockReset()
  })

  it('shows a loading message while fetching', () => {
    fetchEditeursPageMock.mockReturnValue(new Promise(() => {}))

    render(<EditeursList />)

    expect(screen.getByText('Chargement des éditeurs...')).toBeInTheDocument()
  })

  it('shows the editeurs once loaded', async () => {
    fetchEditeursPageMock.mockResolvedValue({ editeurs: [makeEditeur()], count: 1 })

    render(<EditeursList />)

    expect(await screen.findByText('Penguin')).toBeInTheDocument()
  })

  it('shows an empty message when there are no editeurs', async () => {
    fetchEditeursPageMock.mockResolvedValue({ editeurs: [], count: 0 })

    render(<EditeursList />)

    expect(await screen.findByText('Aucun éditeur trouvé')).toBeInTheDocument()
  })

  it('shows an error message when fetching fails', async () => {
    fetchEditeursPageMock.mockRejectedValue(new Error('boom'))

    render(<EditeursList />)

    expect(await screen.findByRole('alert')).toHaveTextContent(
      'Erreur lors du chargement des éditeurs',
    )
  })

  it('opens the create modal when clicking the add button', async () => {
    fetchEditeursPageMock.mockResolvedValue({ editeurs: [], count: 0 })

    render(<EditeursList />)
    fireEvent.click(await screen.findByText('Ajouter un éditeur'))

    expect(screen.getByText('Nouvel éditeur')).toBeInTheDocument()
  })

  it('opens the edit modal pre-filled when clicking the edit button on a row', async () => {
    fetchEditeursPageMock.mockResolvedValue({ editeurs: [makeEditeur()], count: 1 })

    render(<EditeursList />)
    fireEvent.click(await screen.findByLabelText("Modifier l'éditeur"))

    expect(screen.getByLabelText('Nom')).toHaveValue('Penguin')
  })

  it('renders pagination', async () => {
    fetchEditeursPageMock.mockResolvedValue({ editeurs: [makeEditeur()], count: 1 })

    render(<EditeursList />)
    await screen.findByText('Penguin')

    expect(screen.getByLabelText('pagination')).toBeInTheDocument()
  })

  it('opens the delete confirmation modal when clicking the delete button on a row', async () => {
    fetchEditeursPageMock.mockResolvedValue({ editeurs: [makeEditeur()], count: 1 })

    render(<EditeursList />)
    fireEvent.click(await screen.findByLabelText("Supprimer l'éditeur"))

    expect(screen.getByText('Confirmer la suppression')).toBeInTheDocument()
  })
})
