import { describe, expect, it, vi } from 'vitest'
import { render, screen, fireEvent } from '@testing-library/react'
import { StatCard } from '../components/StatCard'

describe('StatCard', () => {
  it('shows title, columns and rows', async () => {
    const load = vi.fn().mockResolvedValue([{ key: 1, cells: ['Doe', 3] }])
    render(<StatCard title="T" columns={['A', 'B']} load={load} />)

    expect(await screen.findByText('Doe')).toBeInTheDocument()
    expect(screen.getByText('A')).toBeInTheDocument()
    expect(screen.getByText('3')).toBeInTheDocument()
  })

  it('shows empty state', async () => {
    render(<StatCard title="T" columns={['A']} load={() => Promise.resolve([])} />)
    expect(await screen.findByText('Aucune donnée disponible')).toBeInTheDocument()
  })

  it('shows error state', async () => {
    render(<StatCard title="T" columns={['A']} load={() => Promise.reject(new Error('x'))} />)
    expect(await screen.findByRole('alert')).toHaveTextContent('Erreur lors du chargement')
  })

  it('collapses and expands', async () => {
    const load = () => Promise.resolve([{ key: 1, cells: ['Doe', 3] }])
    render(<StatCard title="T" columns={['A', 'B']} load={load} />)
    await screen.findByText('Doe')

    const button = screen.getByRole('button')
    expect(button).toHaveAttribute('aria-expanded', 'true')
    fireEvent.click(button)
    expect(button).toHaveAttribute('aria-expanded', 'false')
    expect(screen.queryByText('Doe')).not.toBeInTheDocument()
    fireEvent.click(button)
    expect(screen.getByText('Doe')).toBeInTheDocument()
  })

  it('calls load once', async () => {
    const load = vi.fn().mockResolvedValue([])
    render(<StatCard title="T" columns={['A']} load={load} />)
    await screen.findByText('Aucune donnée disponible')
    expect(load).toHaveBeenCalledTimes(1)
  })

  it('ignores a result arriving after unmount', async () => {
    const errorSpy = vi.spyOn(console, 'error').mockImplementation(() => {})
    let resolve: (v: never[]) => void = () => {}
    const load = () => new Promise<never[]>((r) => (resolve = r))
    const { unmount } = render(<StatCard title="T" columns={['A']} load={load} />)
    unmount()
    resolve([])
    await Promise.resolve()
    expect(errorSpy).not.toHaveBeenCalled()
    errorSpy.mockRestore()
  })
})
