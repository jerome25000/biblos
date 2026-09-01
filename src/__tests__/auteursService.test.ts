import { describe, expect, it, vi, beforeEach } from 'vitest'

const fromMock = vi.fn()

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const { fetchAuteursPage, createAuteur, updateAuteur, deleteAuteur, countLivresByAuteur, AUTEURS_PAGE_SIZE } =
  await import('../services/auteursService')

describe('fetchAuteursPage', () => {
  let rangeMock: ReturnType<typeof vi.fn>
  let selectMock: ReturnType<typeof vi.fn>
  let orderMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    rangeMock = vi.fn().mockResolvedValue({ data: [], count: 0, error: null })
    eqMock = vi.fn().mockReturnThis()
    orderMock = vi.fn().mockReturnThis()
    selectMock = vi.fn(function () {
      return {
        order: orderMock,
        eq: eqMock,
        range: rangeMock,
      }
    })
    fromMock.mockReturnValue({ select: selectMock })
  })

  it('queries livres_auteur ordered by nom asc with the right range', async () => {
    await fetchAuteursPage(2)

    expect(fromMock).toHaveBeenCalledWith('livres_auteur')
    expect(selectMock).toHaveBeenCalledWith('*', { count: 'exact' })
    expect(orderMock).toHaveBeenCalledWith('nom', { ascending: true })
    expect(rangeMock).toHaveBeenCalledWith(
      AUTEURS_PAGE_SIZE,
      AUTEURS_PAGE_SIZE * 2 - 1,
    )
    expect(eqMock).not.toHaveBeenCalled()
  })

  it('returns the auteurs and count from the response', async () => {
    const auteurs = [{ id: 1, nom: 'Herbert' }]
    rangeMock.mockResolvedValue({ data: auteurs, count: 1, error: null })

    const result = await fetchAuteursPage(1)

    expect(result).toEqual({ auteurs, count: 1 })
  })

  it('throws when supabase returns an error', async () => {
    rangeMock.mockResolvedValue({
      data: null,
      count: null,
      error: new Error('boom'),
    })

    await expect(fetchAuteursPage(1)).rejects.toThrow('boom')
  })

  describe('with an auteur filter', () => {
    it('applies eq filter on id', async () => {
      await fetchAuteursPage(1, { type: 'auteur', auteurId: 42 })

      expect(eqMock).toHaveBeenCalledWith('id', 42)
    })
  })
})

describe('createAuteur', () => {
  let insertMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    insertMock = vi.fn().mockResolvedValue({ error: null })
    fromMock.mockReturnValue({ insert: insertMock })
  })

  it('inserts the payload into livres_auteur', async () => {
    const payload = { nom: 'Herbert' } as never

    await createAuteur(payload)

    expect(fromMock).toHaveBeenCalledWith('livres_auteur')
    expect(insertMock).toHaveBeenCalledWith(payload)
  })

  it('throws when supabase returns an error', async () => {
    insertMock.mockResolvedValue({ error: new Error('boom') })

    await expect(createAuteur({ nom: 'Herbert' } as never)).rejects.toThrow(
      'boom',
    )
  })
})

describe('updateAuteur', () => {
  let updateMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ error: null })
    updateMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ update: updateMock })
  })

  it('updates the auteur matching the id', async () => {
    const payload = { nom: 'Herbert' } as never

    await updateAuteur(42, payload)

    expect(fromMock).toHaveBeenCalledWith('livres_auteur')
    expect(updateMock).toHaveBeenCalledWith(payload)
    expect(eqMock).toHaveBeenCalledWith('id', 42)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ error: new Error('boom') })

    await expect(updateAuteur(42, { nom: 'Herbert' } as never)).rejects.toThrow(
      'boom',
    )
  })
})

describe('countLivresByAuteur', () => {
  let selectMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ count: 5, error: null })
    selectMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ select: selectMock })
  })

  it('counts livres for the given auteur_id', async () => {
    const count = await countLivresByAuteur(42)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(selectMock).toHaveBeenCalledWith('*', { count: 'exact', head: true })
    expect(eqMock).toHaveBeenCalledWith('auteur_id', 42)
    expect(count).toBe(5)
  })

  it('returns 0 when count is null', async () => {
    eqMock.mockResolvedValue({ count: null, error: null })

    const count = await countLivresByAuteur(42)

    expect(count).toBe(0)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ count: null, error: new Error('boom') })

    await expect(countLivresByAuteur(42)).rejects.toThrow('boom')
  })
})

describe('deleteAuteur', () => {
  let deleteMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ error: null })
    deleteMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ delete: deleteMock })
  })

  it('deletes the auteur matching the id', async () => {
    await deleteAuteur(42)

    expect(fromMock).toHaveBeenCalledWith('livres_auteur')
    expect(deleteMock).toHaveBeenCalled()
    expect(eqMock).toHaveBeenCalledWith('id', 42)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ error: new Error('boom') })

    await expect(deleteAuteur(42)).rejects.toThrow('boom')
  })
})
