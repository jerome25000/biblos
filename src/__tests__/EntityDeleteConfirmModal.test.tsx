import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import {
  EntityDeleteConfirmModal,
  type EntityDeleteDescriptor,
} from '../components/EntityDeleteConfirmModal'

interface Item {
  id: number
  nom: string
}

const removeMock = vi.fn()
const countMock = vi.fn()

const cases = [
  { prefix: 'auteurs' as const, inUse: 'Cet auteur ne peut pas être supprimé car il possède 3 livre(s).', failure: "Erreur lors de la suppression de l'auteur" },
  { prefix: 'editeurs' as const, inUse: 'Cet éditeur ne peut pas être supprimé car il possède 3 livre(s).', failure: "Erreur lors de la suppression de l'éditeur" },
]

describe.each(cases)('EntityDeleteConfirmModal ($prefix)', ({ prefix, inUse, failure }) => {
  const descriptor: EntityDeleteDescriptor<Item> = {
    i18nPrefix: prefix,
    getLabel: (i) => i.nom,
    remove: removeMock,
    countLivres: countMock,
  }
  const item: Item = { id: 1, nom: 'Penguin' }

  function renderModal(props: { isOpen?: boolean; entity?: Item | null; onClose?: () => void; onDeleted?: () => void } = {}) {
    return render(
      <EntityDeleteConfirmModal
        isOpen={props.isOpen ?? true}
        entity={props.entity === undefined ? item : props.entity}
        onClose={props.onClose ?? vi.fn()}
        onDeleted={props.onDeleted ?? vi.fn()}
        descriptor={descriptor}
      />,
    )
  }

  beforeEach(() => {
    removeMock.mockReset().mockResolvedValue(undefined)
    countMock.mockReset().mockResolvedValue(0)
  })

  it('does not render when closed', () => {
    renderModal({ isOpen: false })
    expect(screen.queryByText('Confirmer la suppression')).not.toBeInTheDocument()
  })

  it('does not render when entity is null', () => {
    renderModal({ entity: null })
    expect(screen.queryByText('Confirmer la suppression')).not.toBeInTheDocument()
  })

  it('shows title and message', () => {
    renderModal()
    expect(screen.getByText('Confirmer la suppression')).toBeInTheDocument()
    expect(screen.getByText(/Penguin/)).toBeInTheDocument()
  })

  it('deletes when no books exist', async () => {
    const onDeleted = vi.fn()
    const onClose = vi.fn()
    renderModal({ onDeleted, onClose })
    fireEvent.click(screen.getByText('Supprimer'))
    await waitFor(() => expect(removeMock).toHaveBeenCalledWith(1))
    expect(countMock).toHaveBeenCalledWith(1)
    expect(onDeleted).toHaveBeenCalled()
    expect(onClose).toHaveBeenCalled()
  })

  it('shows an error and does not delete when books exist', async () => {
    countMock.mockResolvedValue(3)
    const onDeleted = vi.fn()
    renderModal({ onDeleted })
    fireEvent.click(screen.getByText('Supprimer'))
    expect(await screen.findByRole('alert')).toHaveTextContent(inUse)
    expect(removeMock).not.toHaveBeenCalled()
    expect(onDeleted).not.toHaveBeenCalled()
  })

  it('shows an error when deletion fails', async () => {
    removeMock.mockRejectedValue(new Error('boom'))
    renderModal()
    fireEvent.click(screen.getByText('Supprimer'))
    expect(await screen.findByRole('alert')).toHaveTextContent(failure)
  })

  it('closes on cancel, also after an error', async () => {
    countMock.mockResolvedValue(1)
    const onClose = vi.fn()
    renderModal({ onClose })
    fireEvent.click(screen.getByText('Supprimer'))
    await screen.findByRole('alert')
    fireEvent.click(screen.getByText('Annuler'))
    expect(onClose).toHaveBeenCalled()
  })
})
