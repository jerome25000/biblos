import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import type { Auteur } from '../types/database'

const deleteAuteurMock = vi.fn()
const countLivresByAuteurMock = vi.fn()

vi.mock('../services/auteursService', () => ({
  deleteAuteur: deleteAuteurMock,
  countLivresByAuteur: countLivresByAuteurMock,
}))

const { AuteurDeleteConfirmModal } = await import(
  '../components/AuteurDeleteConfirmModal'
)

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

describe('AuteurDeleteConfirmModal', () => {
  beforeEach(() => {
    deleteAuteurMock.mockReset().mockResolvedValue(undefined)
    countLivresByAuteurMock.mockReset().mockResolvedValue(0)
  })

  it('does not render when closed', () => {
    render(
      <AuteurDeleteConfirmModal
        isOpen={false}
        auteur={makeAuteur()}
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
      <AuteurDeleteConfirmModal
        isOpen
        auteur={makeAuteur()}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )
    expect(screen.getByText('Confirmer la suppression')).toBeInTheDocument()
    expect(screen.getByText(/Voulez-vous vraiment supprimer/)).toBeInTheDocument()
    expect(screen.getByText(/Herbert Frank/)).toBeInTheDocument()
  })

  it('does not render when auteur is null', () => {
    render(
      <AuteurDeleteConfirmModal
        isOpen
        auteur={null}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )
    expect(
      screen.queryByText('Confirmer la suppression'),
    ).not.toBeInTheDocument()
  })

  it('deletes the auteur when clicking confirm and no books exist', async () => {
    const onDeleted = vi.fn()
    const onClose = vi.fn()
    render(
      <AuteurDeleteConfirmModal
        isOpen
        auteur={makeAuteur()}
        onClose={onClose}
        onDeleted={onDeleted}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))

    await waitFor(() => expect(countLivresByAuteurMock).toHaveBeenCalledWith(1))
    await waitFor(() => expect(deleteAuteurMock).toHaveBeenCalledWith(1))
    expect(onDeleted).toHaveBeenCalled()
    expect(onClose).toHaveBeenCalled()
  })

  it('shows error message and does not delete when auteur has books', async () => {
    countLivresByAuteurMock.mockResolvedValue(3)
    const onDeleted = vi.fn()
    render(
      <AuteurDeleteConfirmModal
        isOpen
        auteur={makeAuteur()}
        onClose={vi.fn()}
        onDeleted={onDeleted}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))

    await waitFor(() =>
      expect(
        screen.getByRole('alert'),
      ).toHaveTextContent(
        'Cet auteur ne peut pas être supprimé car il possède 3 livre(s).',
      ),
    )
    expect(deleteAuteurMock).not.toHaveBeenCalled()
    expect(onDeleted).not.toHaveBeenCalled()
  })

  it('shows error message when deletion fails', async () => {
    deleteAuteurMock.mockRejectedValue(new Error('boom'))
    render(
      <AuteurDeleteConfirmModal
        isOpen
        auteur={makeAuteur()}
        onClose={vi.fn()}
        onDeleted={vi.fn()}
      />,
    )

    fireEvent.click(screen.getByText('Supprimer'))

    expect(
      await screen.findByRole('alert'),
    ).toHaveTextContent("Erreur lors de la suppression de l'auteur")
  })

  it('closes modal when clicking cancel', () => {
    const onClose = vi.fn()
    render(
      <AuteurDeleteConfirmModal
        isOpen
        auteur={makeAuteur()}
        onClose={onClose}
        onDeleted={vi.fn()}
      />,
    )

    fireEvent.click(screen.getByText('Annuler'))

    expect(onClose).toHaveBeenCalled()
  })

  it('closes modal when clicking cancel after error', async () => {
    countLivresByAuteurMock.mockResolvedValue(1)
    const onClose = vi.fn()
    render(
      <AuteurDeleteConfirmModal
        isOpen
        auteur={makeAuteur()}
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
