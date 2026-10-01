import { describe, it, expect, beforeEach, vi } from 'vitest'
import { render, screen, fireEvent, waitFor } from '@testing-library/react'
import {
  EntitySearchModal,
  type EntitySearchDescriptor,
} from '../components/EntitySearchModal'

interface Item {
  id: number
  nom: string
  prenom?: string
}

const searchMock = vi.fn()

const cases = [
  { prefix: 'auteurs' as const, title: /Rechercher un auteur/i, label: (i: Item) => `${i.nom} ${i.prenom}`, text: 'Herbert Frank' },
  { prefix: 'editeurs' as const, title: /Rechercher un éditeur/i, label: (i: Item) => i.nom, text: 'Herbert' },
]

describe.each(cases)('EntitySearchModal ($prefix)', ({ prefix, title, label, text }) => {
  const onClose = vi.fn()
  const onApply = vi.fn()
  const descriptor: EntitySearchDescriptor<Item, { id: number }> = {
    i18nPrefix: prefix,
    search: searchMock,
    getLabel: label,
    toFilter: (i) => ({ id: i.id }),
  }

  function renderModal(isOpen = true) {
    return render(
      <EntitySearchModal isOpen={isOpen} onClose={onClose} onApply={onApply} descriptor={descriptor} />,
    )
  }

  beforeEach(() => {
    vi.clearAllMocks()
    searchMock.mockResolvedValue([{ id: 7, nom: 'Herbert', prenom: 'Frank' }])
  })

  it('renders nothing when closed', () => {
    const { container } = renderModal(false)
    expect(container.firstChild).toBeNull()
  })

  it('renders the title and focuses the input', () => {
    renderModal()
    expect(screen.getByText(title)).toBeInTheDocument()
    expect(screen.getByPlaceholderText(/Tapez au moins 2 caractères/)).toHaveFocus()
  })

  it('disables apply until a suggestion is selected', () => {
    renderModal()
    expect(screen.getByText(/Valider/)).toBeDisabled()
  })

  it('searches, selects a suggestion and applies the filter', async () => {
    renderModal()
    fireEvent.change(screen.getByPlaceholderText(/Tapez au moins 2 caractères/), {
      target: { value: 'her' },
    })
    const item = await screen.findByText(text, { selector: 'button' })
    expect(searchMock).toHaveBeenCalledWith('her')
    fireEvent.click(item)
    fireEvent.click(screen.getByText(/Valider/))
    await waitFor(() => expect(onApply).toHaveBeenCalledWith({ id: 7 }))
    expect(onClose).toHaveBeenCalled()
  })

  it('shows no results message', async () => {
    searchMock.mockResolvedValue([])
    renderModal()
    fireEvent.change(screen.getByPlaceholderText(/Tapez au moins 2 caractères/), {
      target: { value: 'zz' },
    })
    expect(await screen.findByText(/Aucun/i)).toBeInTheDocument()
  })

  it('resets the query when reopened', () => {
    const { rerender } = renderModal()
    const input = screen.getByPlaceholderText(/Tapez au moins 2 caractères/) as HTMLInputElement
    fireEvent.change(input, { target: { value: 'test' } })
    rerender(<EntitySearchModal isOpen={false} onClose={onClose} onApply={onApply} descriptor={descriptor} />)
    rerender(<EntitySearchModal isOpen onClose={onClose} onApply={onApply} descriptor={descriptor} />)
    const again = screen.getByPlaceholderText(/Tapez au moins 2 caractères/) as HTMLInputElement
    expect(again.value).toBe('')
  })

  it('calls onClose on cancel and on escape', () => {
    renderModal()
    fireEvent.click(screen.getByText(/Annuler/))
    fireEvent.keyDown(document, { key: 'Escape' })
    expect(onClose).toHaveBeenCalledTimes(2)
  })
})
