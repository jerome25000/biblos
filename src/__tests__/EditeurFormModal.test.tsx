import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import type { Editeur } from '../types/database'

const createEditeurMock = vi.fn()
const updateEditeurMock = vi.fn()

vi.mock('../services/editeursService', () => ({
  createEditeur: createEditeurMock,
  updateEditeur: updateEditeurMock,
}))

const { EditeurFormModal } = await import('../components/EditeurFormModal')

function makeEditeur(overrides: Partial<Editeur> = {}): Editeur {
  return {
    id: 1,
    nom: 'Penguin',
    adresse: '123 Street',
    ...overrides,
  }
}

describe('EditeurFormModal', () => {
  beforeEach(() => {
    createEditeurMock.mockReset().mockResolvedValue(undefined)
    updateEditeurMock.mockReset().mockResolvedValue(undefined)
  })

  it('does not render when closed', () => {
    render(
      <EditeurFormModal isOpen={false} onClose={vi.fn()} onSaved={vi.fn()} />,
    )
    expect(screen.queryByText('Nouvel éditeur')).not.toBeInTheDocument()
  })

  it('shows the create title with an empty form when no editeur is given', () => {
    render(<EditeurFormModal isOpen onClose={vi.fn()} onSaved={vi.fn()} />)
    expect(screen.getByText('Nouvel éditeur')).toBeInTheDocument()
    expect(screen.getByLabelText('Nom')).toHaveValue('')
  })

  it('shows the edit title pre-filled with the editeur data', () => {
    render(
      <EditeurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        editeur={makeEditeur()}
      />,
    )
    expect(screen.getByText("Modifier l'éditeur")).toBeInTheDocument()
    expect(screen.getByLabelText('Nom')).toHaveValue('Penguin')
  })

  it('does not submit when nom is missing', async () => {
    const { container } = render(
      <EditeurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        editeur={makeEditeur({ nom: '' })}
      />,
    )

    fireEvent.submit(container.querySelector('form')!)

    expect(createEditeurMock).not.toHaveBeenCalled()
    expect(updateEditeurMock).not.toHaveBeenCalled()
    expect(await screen.findByRole('alert')).toBeInTheDocument()
  })

  it('creates a new editeur on submit', async () => {
    const onSaved = vi.fn()
    const onClose = vi.fn()
    render(<EditeurFormModal isOpen onClose={onClose} onSaved={onSaved} />)

    fireEvent.change(screen.getByLabelText('Nom'), {
      target: { value: 'Penguin' },
    })
    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() => expect(createEditeurMock).toHaveBeenCalled())
    expect(onSaved).toHaveBeenCalled()
    expect(onClose).toHaveBeenCalled()
  })

  it('updates an existing editeur on submit', async () => {
    const onSaved = vi.fn()
    render(
      <EditeurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={onSaved}
        editeur={makeEditeur()}
      />,
    )

    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() =>
      expect(updateEditeurMock).toHaveBeenCalledWith(1, expect.any(Object)),
    )
    expect(onSaved).toHaveBeenCalled()
  })

  it('preserves adresse when updating', async () => {
    render(
      <EditeurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        editeur={makeEditeur({ adresse: 'old address' })}
      />,
    )

    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() =>
      expect(updateEditeurMock).toHaveBeenCalledWith(
        1,
        expect.objectContaining({ adresse: 'old address' }),
      ),
    )
  })

  it('shows an error message when saving fails', async () => {
    updateEditeurMock.mockRejectedValue(new Error('boom'))
    render(
      <EditeurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        editeur={makeEditeur()}
      />,
    )

    fireEvent.click(screen.getByText('Enregistrer'))

    expect(await screen.findByRole('alert')).toBeInTheDocument()
  })
})
