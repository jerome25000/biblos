import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import type { Editeur } from '../types/database'

const deleteEditeurMock = vi.fn()
const countLivresByEditeurMock = vi.fn()

vi.mock('../services/editeursService', () => ({
  deleteEditeur: deleteEditeurMock,
  countLivresByEditeur: countLivresByEditeurMock,
}))

const { EditeurDeleteConfirmModal } = await import(
  '../components/EditeurDeleteConfirmModal'
)

function makeEditeur(overrides: Partial<Editeur> = {}): Editeur {
  return {
    id: 1,
    nom: 'Penguin',
    adresse: '123 Street',
    ...overrides,
  }
}

describe('EditeurDeleteConfirmModal', () => {
  beforeEach(() => {
    deleteEditeurMock.mockReset().mockResolvedValue(undefined)
    countLivresByEditeurMock.mockReset().mockResolvedValue(0)
  })

  it('does not render when closed', () => {
    render(
      <EditeurDeleteConfirmModal
        isOpen={false}
        editeur={makeEditeur()}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )
    expect(
      screen.queryByText('Confirmer la suppression'),
    ).not.toBeInTheDocument()
  })

  it('shows the confirmation title and message when open', () => {
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={makeEditeur()}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )
    expect(screen.getByText('Confirmer la suppression')).toBeInTheDocument()
    expect(screen.getByText(/Voulez-vous vraiment supprimer/)).toBeInTheDocument()
    expect(screen.getByText(/Penguin/)).toBeInTheDocument()
  })

  it('does not render when editeur is null', () => {
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={null}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )
    expect(
      screen.queryByText('Confirmer la suppression'),
    ).not.toBeInTheDocument()
  })

  it('deletes the editeur when clicking confirm and no books exist', async () => {
    const onDeleted = vi.fn()
    const onClose = vi.fn()
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={makeEditeur()}
        onClose={onClose}
        onDeleted={onDeleted}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))

    await waitFor(() => expect(countLivresByEditeurMock).toHaveBeenCalledWith(1))
    await waitFor(() => expect(deleteEditeurMock).toHaveBeenCalledWith(1))
    expect(onDeleted).toHaveBeenCalled()
    expect(onClose).toHaveBeenCalled()
  })

  it('shows error message and does not delete when editeur has books', async () => {
    countLivresByEditeurMock.mockResolvedValue(3)
    const onDeleted = vi.fn()
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={makeEditeur()}
        onClose={vi.fn()}
        onDeleted={onDeleted}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))

    await waitFor(() =>
      expect(
        screen.getByRole('alert'),
      ).toHaveTextContent(
        'Cet éditeur ne peut pas être supprimé car il possède 3 livre(s).',
      ),
    )
    expect(deleteEditeurMock).not.toHaveBeenCalled()
    expect(onDeleted).not.toHaveBeenCalled()
  })

  it('shows error message when deletion fails', async () => {
    deleteEditeurMock.mockRejectedValue(new Error('boom'))
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={makeEditeur()}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))

    expect(
      await screen.findByRole('alert'),
    ).toHaveTextContent("Erreur lors de la suppression de l'éditeur")
  })

  it('closes modal when clicking cancel', () => {
    const onClose = vi.fn()
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={makeEditeur()}
        onClose={onClose}
        onDeleted={vi.fn()}
      />,
    )

    fireEvent.click(screen.getByText('Annuler'))

    expect(onClose).toHaveBeenCalled()
  })

  it('closes modal when clicking cancel after error', async () => {
    countLivresByEditeurMock.mockResolvedValue(1)
    const onClose = vi.fn()
    render(
      <EditeurDeleteConfirmModal
        isOpen
        editeur={makeEditeur()}
        onClose={onClose}
        onDeleted={vi.fn()}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))
    await screen.findByRole('alert')

    fireEvent.click(screen.getByText('Annuler'))

    expect(onClose).toHaveBeenCalled()
  })
})
