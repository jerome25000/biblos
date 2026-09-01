import { describe, it, expect, beforeEach, vi } from 'vitest'
import { render, screen, fireEvent } from '@testing-library/react'
import { EditeurSearchModal } from '../components/EditeurSearchModal'

vi.mock('../services/searchService')

describe('EditeurSearchModal', () => {
  const mockOnClose = vi.fn()
  const mockOnApply = vi.fn()

  beforeEach(() => {
    mockOnClose.mockClear()
    mockOnApply.mockClear()
    vi.clearAllMocks()
  })

  it('renders nothing when isOpen is false', () => {
    const { container } = render(
      <EditeurSearchModal
        isOpen={false}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )
    expect(container.firstChild).toBeNull()
  })

  it('renders the modal with title when isOpen is true', () => {
    render(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    expect(screen.getByText(/Rechercher un éditeur/i)).toBeInTheDocument()
  })

  it('focuses the search input when opened', () => {
    render(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    const input = screen.getByPlaceholderText(/Tapez au moins 2 caractères/)
    expect(input).toHaveFocus()
  })

  it('disables the apply button until a suggestion is selected', async () => {
    render(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    const applyButton = screen.getByText(/Valider/)
    expect(applyButton).toBeDisabled()
  })

  it('calls onClose when cancel button is clicked', async () => {
    render(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    const cancelButton = screen.getByText(/Annuler/)
    fireEvent.click(cancelButton)

    expect(mockOnClose).toHaveBeenCalled()
  })

  it('resets state when modal is closed and reopened', () => {
    const { rerender } = render(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    const input = screen.getByPlaceholderText(
      /Tapez au moins 2 caractères/,
    ) as HTMLInputElement
    fireEvent.change(input, { target: { value: 'test' } })
    expect(input.value).toBe('test')

    rerender(
      <EditeurSearchModal
        isOpen={false}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    rerender(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    const newInput = screen.getByPlaceholderText(
      /Tapez au moins 2 caractères/,
    ) as HTMLInputElement
    expect(newInput.value).toBe('')
  })

  it('calls onClose when escape key is pressed', async () => {
    render(
      <EditeurSearchModal
        isOpen={true}
        onClose={mockOnClose}
        onApply={mockOnApply}
      />,
    )

    fireEvent.keyDown(document, { key: 'Escape' })

    expect(mockOnClose).toHaveBeenCalled()
  })
})
