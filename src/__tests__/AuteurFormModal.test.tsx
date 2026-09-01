import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import type { Auteur } from '../types/database'

const fetchPaysMock = vi.fn()
const createAuteurMock = vi.fn()
const updateAuteurMock = vi.fn()

vi.mock('../services/referentielsService', () => ({
  fetchPays: fetchPaysMock,
}))

vi.mock('../services/auteursService', () => ({
  createAuteur: createAuteurMock,
  updateAuteur: updateAuteurMock,
}))

const { AuteurFormModal } = await import('../components/AuteurFormModal')

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

describe('AuteurFormModal', () => {
  beforeEach(() => {
    fetchPaysMock.mockReset().mockResolvedValue([{ id: 1, nom: 'États-Unis' }])
    createAuteurMock.mockReset().mockResolvedValue(undefined)
    updateAuteurMock.mockReset().mockResolvedValue(undefined)
  })

  it('does not render when closed', () => {
    render(
      <AuteurFormModal isOpen={false} onClose={vi.fn()} onSaved={vi.fn()} />,
    )
    expect(screen.queryByText('Nouvel auteur')).not.toBeInTheDocument()
  })

  it('shows the create title with an empty form when no auteur is given', () => {
    render(<AuteurFormModal isOpen onClose={vi.fn()} onSaved={vi.fn()} />)
    expect(screen.getByText('Nouvel auteur')).toBeInTheDocument()
    expect(screen.getByLabelText('Nom')).toHaveValue('')
  })

  it('shows the edit title pre-filled with the auteur data', () => {
    render(
      <AuteurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        auteur={makeAuteur()}
      />,
    )
    expect(screen.getByText("Modifier l'auteur")).toBeInTheDocument()
    expect(screen.getByLabelText('Nom')).toHaveValue('Herbert')
    expect(screen.getByLabelText('Prénom')).toHaveValue('Frank')
  })

  it('does not submit when nom is missing', async () => {
    const { container } = render(
      <AuteurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        auteur={makeAuteur({ nom: '' })}
      />,
    )
    await screen.findByRole('option', { name: 'États-Unis' })

    fireEvent.submit(container.querySelector('form')!)

    expect(createAuteurMock).not.toHaveBeenCalled()
    expect(updateAuteurMock).not.toHaveBeenCalled()
    expect(await screen.findByRole('alert')).toBeInTheDocument()
  })

  it('creates a new auteur on submit', async () => {
    const onSaved = vi.fn()
    const onClose = vi.fn()
    render(<AuteurFormModal isOpen onClose={onClose} onSaved={onSaved} />)

    await screen.findByRole('option', { name: 'États-Unis' })

    fireEvent.change(screen.getByLabelText('Nom'), {
      target: { value: 'Herbert' },
    })
    fireEvent.change(screen.getByLabelText('Prénom'), {
      target: { value: 'Frank' },
    })
    fireEvent.change(screen.getByLabelText('Nationalité'), {
      target: { value: '1' },
    })
    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() => expect(createAuteurMock).toHaveBeenCalled())
    expect(onSaved).toHaveBeenCalled()
    expect(onClose).toHaveBeenCalled()
  })

  it('updates an existing auteur on submit', async () => {
    const onSaved = vi.fn()
    render(
      <AuteurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={onSaved}
        auteur={makeAuteur()}
      />,
    )

    await screen.findByRole('option', { name: 'États-Unis' })

    fireEvent.click(screen.getByText('Enregistrer'))

    await waitFor(() =>
      expect(updateAuteurMock).toHaveBeenCalledWith(1, expect.any(Object)),
    )
    expect(onSaved).toHaveBeenCalled()
  })

  it('shows an error message when saving fails', async () => {
    updateAuteurMock.mockRejectedValue(new Error('boom'))
    render(
      <AuteurFormModal
        isOpen
        onClose={vi.fn()}
        onSaved={vi.fn()}
        auteur={makeAuteur()}
      />,
    )

    await screen.findByRole('option', { name: 'États-Unis' })

    fireEvent.click(screen.getByText('Enregistrer'))

    expect(await screen.findByRole('alert')).toBeInTheDocument()
  })
})
