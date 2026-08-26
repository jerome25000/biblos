import { describe, expect, it, vi } from 'vitest'
import { render, screen, fireEvent } from '@testing-library/react'
import { Pagination } from '../components/Pagination'

describe('Pagination', () => {
  it('disables previous on the first page and next on the last page', () => {
    render(
      <Pagination page={1} count={10} pageSize={50} onPageChange={vi.fn()} />,
    )
    expect(screen.getByText('Précédent')).toBeDisabled()
    expect(screen.getByText('Suivant')).toBeDisabled()
  })

  it('calls onPageChange with the next page', () => {
    const onPageChange = vi.fn()
    render(
      <Pagination
        page={1}
        count={150}
        pageSize={50}
        onPageChange={onPageChange}
      />,
    )
    fireEvent.click(screen.getByText('Suivant'))
    expect(onPageChange).toHaveBeenCalledWith(2)
  })

  it('calls onPageChange with the previous page', () => {
    const onPageChange = vi.fn()
    render(
      <Pagination
        page={2}
        count={150}
        pageSize={50}
        onPageChange={onPageChange}
      />,
    )
    fireEvent.click(screen.getByText('Précédent'))
    expect(onPageChange).toHaveBeenCalledWith(1)
  })
})
