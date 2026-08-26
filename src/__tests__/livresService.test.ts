import { describe, expect, it, vi, beforeEach } from 'vitest'

const rangeMock = vi.fn()
const notMock = vi.fn(() => ({ range: rangeMock }))
const orderMock = vi.fn(() => ({ not: notMock }))
const selectMock = vi.fn(() => ({ order: orderMock }))
const insertMock = vi.fn()
const eqMock = vi.fn()
const updateMock = vi.fn(() => ({ eq: eqMock }))
const fromMock = vi.fn((_table: string) => ({
  select: selectMock,
  insert: insertMock,
  update: updateMock,
}))

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const { fetchLivres, createLivre, updateLivre, PAGE_SIZE } = await import(
  '../services/livresService'
)

describe('fetchLivres', () => {
  beforeEach(() => {
    fromMock.mockClear()
    selectMock.mockClear()
    orderMock.mockClear()
    notMock.mockClear()
    rangeMock.mockReset()
    insertMock.mockReset()
    updateMock.mockClear()
    eqMock.mockReset()
  })

  it('queries livres_livres ordered by dateDebutLecture desc, excluding unread books, with the right range', async () => {
    rangeMock.mockResolvedValue({ data: [], count: 0, error: null })

    await fetchLivres(2)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(selectMock).toHaveBeenCalledWith('*', { count: 'exact' })
    expect(orderMock).toHaveBeenCalledWith('dateDebutLecture', {
      ascending: false,
    })
    expect(notMock).toHaveBeenCalledWith('dateDebutLecture', 'is', null)
    expect(rangeMock).toHaveBeenCalledWith(PAGE_SIZE, PAGE_SIZE * 2 - 1)
  })

  it('returns the livres and count from the response', async () => {
    const livres = [{ id: 1 }]
    rangeMock.mockResolvedValue({ data: livres, count: 1, error: null })

    const result = await fetchLivres(1)

    expect(result).toEqual({ livres, count: 1 })
  })

  it('throws when supabase returns an error', async () => {
    rangeMock.mockResolvedValue({
      data: null,
      count: null,
      error: new Error('boom'),
    })

    await expect(fetchLivres(1)).rejects.toThrow('boom')
  })
})

describe('createLivre', () => {
  beforeEach(() => {
    fromMock.mockClear()
    insertMock.mockReset()
  })

  it('inserts the payload into livres_livres', async () => {
    insertMock.mockResolvedValue({ error: null })
    const payload = { titre: 'Dune' } as never

    await createLivre(payload)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(insertMock).toHaveBeenCalledWith(payload)
  })

  it('throws when supabase returns an error', async () => {
    insertMock.mockResolvedValue({ error: new Error('boom') })

    await expect(createLivre({ titre: 'Dune' } as never)).rejects.toThrow(
      'boom',
    )
  })
})

describe('updateLivre', () => {
  beforeEach(() => {
    fromMock.mockClear()
    updateMock.mockClear()
    eqMock.mockReset()
  })

  it('updates the livre matching the id', async () => {
    eqMock.mockResolvedValue({ error: null })
    const payload = { titre: 'Dune' } as never

    await updateLivre(42, payload)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(updateMock).toHaveBeenCalledWith(payload)
    expect(eqMock).toHaveBeenCalledWith('id', 42)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ error: new Error('boom') })

    await expect(updateLivre(42, { titre: 'Dune' } as never)).rejects.toThrow(
      'boom',
    )
  })
})
