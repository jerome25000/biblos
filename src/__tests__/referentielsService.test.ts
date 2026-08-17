import { describe, expect, it, vi, beforeEach } from 'vitest'

const orderMock = vi.fn()
const selectMock = vi.fn(() => ({ order: orderMock }))
const fromMock = vi.fn((_table: string) => ({ select: selectMock }))

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const { fetchAuteurs, fetchEditeurs, fetchGenres, fetchTypesLivre } =
  await import('../services/referentielsService')

describe('referentielsService', () => {
  beforeEach(() => {
    fromMock.mockClear()
    selectMock.mockClear()
    orderMock.mockReset()
  })

  it('fetches auteurs ordered by nom', async () => {
    const auteurs = [{ id: 1, nom: 'Herbert', prenom: 'Frank' }]
    orderMock.mockResolvedValue({ data: auteurs, error: null })

    const result = await fetchAuteurs()

    expect(fromMock).toHaveBeenCalledWith('livres_auteur')
    expect(orderMock).toHaveBeenCalledWith('nom', { ascending: true })
    expect(result).toEqual(auteurs)
  })

  it('fetches editeurs ordered by nom', async () => {
    orderMock.mockResolvedValue({ data: [], error: null })

    await fetchEditeurs()

    expect(fromMock).toHaveBeenCalledWith('livres_editeur')
    expect(orderMock).toHaveBeenCalledWith('nom', { ascending: true })
  })

  it('fetches genres ordered by genre', async () => {
    orderMock.mockResolvedValue({ data: [], error: null })

    await fetchGenres()

    expect(fromMock).toHaveBeenCalledWith('livres_genre')
    expect(orderMock).toHaveBeenCalledWith('genre', { ascending: true })
  })

  it('fetches types de livre ordered by type', async () => {
    orderMock.mockResolvedValue({ data: [], error: null })

    await fetchTypesLivre()

    expect(fromMock).toHaveBeenCalledWith('livres_typelivre')
    expect(orderMock).toHaveBeenCalledWith('type', { ascending: true })
  })

  it('throws when supabase returns an error', async () => {
    orderMock.mockResolvedValue({ data: null, error: new Error('boom') })

    await expect(fetchAuteurs()).rejects.toThrow('boom')
  })
})
