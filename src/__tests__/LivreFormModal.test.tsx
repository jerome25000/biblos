import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import type { Livre } from '../types/database'

const fetchAuteursMock = vi.fn()
const fetchEditeursMock = vi.fn()
const fetchGenresMock = vi.fn()
const fetchTypesLivreMock = vi.fn()
const createLivreMock = vi.fn()
const updateLivreMock = vi.fn()

vi.mock('../services/referentielsService', () => ({
  fetchAuteurs: fetchAuteursMock,
  fetchEditeurs: fetchEditeursMock,
  fetchGenres: fetchGenresMock,
  fetchTypesLivre: fetchTypesLivreMock,
}))

vi.mock('../services/livresService', () => ({
  createLivre: createLivreMock,
  updateLivre: updateLivreMock,
}))

const { LivreFormModal } = await import('../components/LivreFormModal')

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
    dateDebutLecture: null,
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

describe('LivreFormModal', () => {
  beforeEach(() => {
    fetchAuteursMock.mockReset().mockResolvedValue([])
    fetchEditeursMock
      .mockReset()
      .mockResolvedValue([{ id: 1, nom: 'Robert Laffont', adresse: '' }])
    fetchGenresMock
      .mockReset()
      .mockResolvedValue([{ id: 1, genre: 'Science-fiction' }])
    fetchTypesLivreMock.mockReset().mockResolvedValue([{ id: 1, type: 'Roman' }])
    createLivreMock.mockReset().mockResolvedValue(undefined)
    updateLivreMock.mockReset().mockResolvedValue(undefined)
  })

  it('does not render when closed', () => {
    render(
      <LivreFormModal isOpen={false} onClose={vi.fn()} onSaved={vi.fn()} />,
    )
    expect(screen.queryByText('Nouveau livre')).not.toBeInTheDocument()
  })

  it('shows the create title with an empty form when no livre is given', () => {
    render(<LivreFormModal isOpen onClose={vi.fn()} onSaved={vi.fn()} />)
    expect(screen.getByText('Nouveau livre')).toBeInTheDocument()
    expect(screen.getByLabelText('Titre')).toHaveValue('')
  })

  it('shows the edit title pre-filled with the livre data', () => {
    render(
      <LivreFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        livre={makeLivre()}
      />,
    )
    expect(screen.getByText('Modifier le livre')).toBeInTheDocument()
    expect(screen.getByLabelText('Titre')).toHaveValue('Dune')
  })

  it('creates a new livre on submit', async () => {
    const onSaved = vi.fn()
    const onClose = vi.fn()
    render(<LivreFormModal isOpen onClose={onClose} onSaved={onSaved} />)

    await screen.findByRole('option', { name: 'Robert Laffont' })

    fireEvent.change(screen.getByLabelText('Titre'), {
      target: { value: 'Dune' },
    })
    fireEvent.change(screen.getByLabelText('Éditeur'), {
      target: { value: '1' },
    })
    fireEvent.change(screen.getByLabelText('Genre'), {
      target: { value: '1' },
    })
    fireEvent.change(screen.getByLabelText('Type de livre'), {
      target: { value: '1' },
    })
    fireEvent.change(screen.getByLabelText("Année de 1ère édition"), {
      target: { value: '1965' },
    })
    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() => expect(createLivreMock).toHaveBeenCalled())
    expect(onSaved).toHaveBeenCalled()
    expect(onClose).toHaveBeenCalled()
  })

  it('updates an existing livre on submit', async () => {
    const onSaved = vi.fn()
    render(
      <LivreFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={onSaved}
        livre={makeLivre()}
      />,
    )

    await screen.findByRole('option', { name: 'Robert Laffont' })

    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() => expect(updateLivreMock).toHaveBeenCalledWith(1, expect.any(Object)))
    expect(onSaved).toHaveBeenCalled()
  })

  it('shows an error message when saving fails', async () => {
    createLivreMock.mockRejectedValue(new Error('boom'))
    render(
      <LivreFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        livre={makeLivre()}
      />,
    )

    await screen.findByRole('option', { name: 'Robert Laffont' })
    updateLivreMock.mockRejectedValue(new Error('boom'))

    fireEvent.click(screen.getByText('Enregistrer'))

    expect(await screen.findByRole('alert')).toBeInTheDocument()
  })
})
