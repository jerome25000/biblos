import { describe, expect, it, vi } from 'vitest'
import { fireEvent, render, screen } from '@testing-library/react'
import { StarRating } from '../components/StarRating'

describe('StarRating', () => {
  it('shows the current value', () => {
    render(<StarRating value={3.5} onChange={vi.fn()} />)
    expect(screen.getByText('3.5')).toBeInTheDocument()
  })

  it('calls onChange with the full star value when clicking the right half', () => {
    const onChange = vi.fn()
    render(<StarRating value={null} onChange={onChange} />)

    fireEvent.click(screen.getByRole('button', { name: '3' }))

    expect(onChange).toHaveBeenCalledWith(3)
  })

  it('calls onChange with the half star value when clicking the left half', () => {
    const onChange = vi.fn()
    render(<StarRating value={null} onChange={onChange} />)

    fireEvent.click(screen.getByRole('button', { name: '3.5' }))

    expect(onChange).toHaveBeenCalledWith(3.5)
  })

  it('clears the value when clicking the same star again', () => {
    const onChange = vi.fn()
    render(<StarRating value={3} onChange={onChange} />)

    fireEvent.click(screen.getByRole('button', { name: '3' }))

    expect(onChange).toHaveBeenCalledWith(null)
  })

  it('does not call onChange when disabled', () => {
    const onChange = vi.fn()
    render(<StarRating value={null} onChange={onChange} disabled />)

    fireEvent.click(screen.getByRole('button', { name: '3' }))

    expect(onChange).not.toHaveBeenCalled()
  })
})
