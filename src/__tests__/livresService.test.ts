import { describe, expect, it, vi, beforeEach } from 'vitest'

const fromMock = vi.fn()

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const { fetchLivres, createLivre, updateLivre, PAGE_SIZE } = await import(
  '../services/livresService'
)

describe('fetchLivres', () => {
  let rangeMock: ReturnType<typeof vi.fn>
  let selectMock: ReturnType<typeof vi.fn>
  let orderMock: ReturnType<typeof vi.fn>
  let notMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>
  let ilikeMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    rangeMock = vi.fn().mockResolvedValue({ data: [], count: 0, error: null })
    eqMock = vi.fn().mockReturnThis()
    ilikeMock = vi.fn().mockReturnThis()
    notMock = vi.fn().mockReturnThis()
    orderMock = vi.fn().mockReturnThis()
    selectMock = vi.fn(function () {
      return {
        order: orderMock,
        not: notMock,
        eq: eqMock,
        ilike: ilikeMock,
        range: rangeMock,
      }
    })
    fromMock.mockReturnValue({ select: selectMock })
  })

  it('queries livres_livres ordered by dateDebutLecture desc, excluding unread books, with the right range', async () => {
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

  describe('with titre filter', () => {
    it('applies ilike filter on titre and does not apply the dateDebutLecture constraint', async () => {
      await fetchLivres(1, { type: 'titre', titre: 'Dune' })

      expect(ilikeMock).toHaveBeenCalledWith('titre', 'Dune')
      expect(notMock).not.toHaveBeenCalled()
    })
  })

  describe('with auteur filter', () => {
    it('applies eq filter on auteur_id and does not apply the dateDebutLecture constraint', async () => {
      await fetchLivres(1, { type: 'auteur', auteurId: 42 })

      expect(eqMock).toHaveBeenCalledWith('auteur_id', 42)
      expect(notMock).not.toHaveBeenCalled()
    })
  })

  describe('with editeur filter', () => {
    it('applies eq filter on numEditeur_id and does not apply the dateDebutLecture constraint', async () => {
      await fetchLivres(1, { type: 'editeur', editeurId: 99 })

      expect(eqMock).toHaveBeenCalledWith('numEditeur_id', 99)
      expect(notMock).not.toHaveBeenCalled()
    })
  })
})

describe('createLivre', () => {
  let insertMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    insertMock = vi.fn().mockResolvedValue({ error: null })
    fromMock.mockReturnValue({ insert: insertMock })
  })

  it('inserts the payload into livres_livres', async () => {
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
  let updateMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ error: null })
    updateMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ update: updateMock })
  })

  it('updates the livre matching the id', async () => {
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
