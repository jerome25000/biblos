import { describe, expect, it, vi } from 'vitest'
import { render, screen } from '@testing-library/react'

const row = (label: string | number) => [{ key: label, cells: [label, 1] }]

vi.mock('../services/statsService', () => ({
  loadLivresLusParAnnee: () => Promise.resolve(row(2024)),
  loadTopAuteursLus: () => Promise.reject(new Error('boom')),
  loadTopAuteursCollectionnes: () => Promise.resolve(row('Jane Roe')),
}))

const { StatistiquesList } = await import('../components/StatistiquesList')

describe('StatistiquesList', () => {
  it('renders the three cards with their own data and errors', async () => {
    render(<StatistiquesList />)

    expect(screen.getByText('Livres lus par année')).toBeInTheDocument()
    expect(screen.getByText('Top 10 des auteurs les plus lus')).toBeInTheDocument()
    expect(screen.getByText('Top 10 des auteurs les plus collectionnés')).toBeInTheDocument()
    expect(await screen.findByText('2024')).toBeInTheDocument()
    expect(await screen.findByText('Jane Roe')).toBeInTheDocument()
    expect(await screen.findAllByRole('alert')).toHaveLength(1)
  })
})
