import { describe, expect, it, vi, beforeEach } from 'vitest'

const fromMock = vi.fn()

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const { fetchEmprunts, returnLivre } = await import(
  '../services/empruntsService'
)

describe('fetchEmprunts', () => {
  let rangeMock: ReturnType<typeof vi.fn>
  let neqMock: ReturnType<typeof vi.fn>
  let notMock: ReturnType<typeof vi.fn>
  let orderMock: ReturnType<typeof vi.fn>
  let selectMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    rangeMock = vi.fn().mockResolvedValue({ data: [], count: 0, error: null })
    orderMock = vi.fn().mockReturnValue({ range: rangeMock })
    neqMock = vi.fn().mockReturnValue({ order: orderMock })
    notMock = vi.fn().mockReturnValue({ neq: neqMock })
    selectMock = vi.fn().mockReturnValue({ not: notMock })
    fromMock.mockReturnValue({ select: selectMock })
  })

  it('queries livres_livres with emprunteur not null and not empty', async () => {
    await fetchEmprunts(1)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(selectMock).toHaveBeenCalledWith('*', { count: 'exact' })
    expect(notMock).toHaveBeenCalledWith('emprunteur', 'is', null)
    expect(neqMock).toHaveBeenCalledWith('emprunteur', '')
  })

  it('orders by titre ascending', async () => {
    await fetchEmprunts(1)

    expect(orderMock).toHaveBeenCalledWith('titre', { ascending: true })
  })

  it('paginates with the right range', async () => {
    await fetchEmprunts(2)

    expect(rangeMock).toHaveBeenCalledWith(50, 99)
  })

  it('returns the livres and count from the response', async () => {
    const livres = [
      {
        id: 1,
        titre: 'Test',
        auteur_id: 1,
        emprunteur: 'John Doe',
      },
    ] as never
    rangeMock.mockResolvedValue({ data: livres, count: 1, error: null })

    const result = await fetchEmprunts(1)

    expect(result).toEqual({ livres, count: 1 })
  })

  it('throws when supabase returns an error', async () => {
    rangeMock.mockResolvedValue({
      data: null,
      count: null,
      error: new Error('boom'),
    })

    await expect(fetchEmprunts(1)).rejects.toThrow('boom')
  })
})

describe('returnLivre', () => {
  let eqMock: ReturnType<typeof vi.fn>
  let updateMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ error: null })
    updateMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ update: updateMock })
  })

  it('updates the livre with emprunteur set to null', async () => {
    await returnLivre(42)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(updateMock).toHaveBeenCalledWith({ emprunteur: null })
    expect(eqMock).toHaveBeenCalledWith('id', 42)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ error: new Error('boom') })

    await expect(returnLivre(42)).rejects.toThrow('boom')
  })
})
