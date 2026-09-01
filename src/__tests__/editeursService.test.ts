import { describe, expect, it, vi, beforeEach } from 'vitest'

const fromMock = vi.fn()

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const { fetchEditeursPage, createEditeur, updateEditeur, deleteEditeur, countLivresByEditeur, EDITEURS_PAGE_SIZE } =
  await import('../services/editeursService')

describe('fetchEditeursPage', () => {
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

  it('queries livres_editeur ordered by nom asc with the right range', async () => {
    await fetchEditeursPage(2)

    expect(fromMock).toHaveBeenCalledWith('livres_editeur')
    expect(selectMock).toHaveBeenCalledWith('*', { count: 'exact' })
    expect(orderMock).toHaveBeenCalledWith('nom', { ascending: true })
    expect(rangeMock).toHaveBeenCalledWith(
      EDITEURS_PAGE_SIZE,
      EDITEURS_PAGE_SIZE * 2 - 1,
    )
    expect(eqMock).not.toHaveBeenCalled()
  })

  it('returns the editeurs and count from the response', async () => {
    const editeurs = [{ id: 1, nom: 'Penguin', adresse: '' }]
    rangeMock.mockResolvedValue({ data: editeurs, count: 1, error: null })

    const result = await fetchEditeursPage(1)

    expect(result).toEqual({ editeurs, count: 1 })
  })

  it('throws when supabase returns an error', async () => {
    rangeMock.mockResolvedValue({
      data: null,
      count: null,
      error: new Error('boom'),
    })

    await expect(fetchEditeursPage(1)).rejects.toThrow('boom')
  })

  describe('with an editeur filter', () => {
    it('applies eq filter on id', async () => {
      await fetchEditeursPage(1, { type: 'editeur', editeurId: 42 })

      expect(eqMock).toHaveBeenCalledWith('id', 42)
    })
  })
})

describe('createEditeur', () => {
  let insertMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    insertMock = vi.fn().mockResolvedValue({ error: null })
    fromMock.mockReturnValue({ insert: insertMock })
  })

  it('inserts the payload into livres_editeur', async () => {
    const payload = { nom: 'Penguin', adresse: '' } as never

    await createEditeur(payload)

    expect(fromMock).toHaveBeenCalledWith('livres_editeur')
    expect(insertMock).toHaveBeenCalledWith(payload)
  })

  it('throws when supabase returns an error', async () => {
    insertMock.mockResolvedValue({ error: new Error('boom') })

    await expect(createEditeur({ nom: 'Penguin', adresse: '' } as never)).rejects.toThrow(
      'boom',
    )
  })
})

describe('updateEditeur', () => {
  let updateMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ error: null })
    updateMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ update: updateMock })
  })

  it('updates the editeur matching the id', async () => {
    const payload = { nom: 'Penguin', adresse: '' } as never

    await updateEditeur(42, payload)

    expect(fromMock).toHaveBeenCalledWith('livres_editeur')
    expect(updateMock).toHaveBeenCalledWith(payload)
    expect(eqMock).toHaveBeenCalledWith('id', 42)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ error: new Error('boom') })

    await expect(updateEditeur(42, { nom: 'Penguin', adresse: '' } as never)).rejects.toThrow(
      'boom',
    )
  })
})

describe('countLivresByEditeur', () => {
  let selectMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ count: 5, error: null })
    selectMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ select: selectMock })
  })

  it('counts livres for the given numEditeur_id', async () => {
    const count = await countLivresByEditeur(42)

    expect(fromMock).toHaveBeenCalledWith('livres_livres')
    expect(selectMock).toHaveBeenCalledWith('*', { count: 'exact', head: true })
    expect(eqMock).toHaveBeenCalledWith('numEditeur_id', 42)
    expect(count).toBe(5)
  })

  it('returns 0 when count is null', async () => {
    eqMock.mockResolvedValue({ count: null, error: null })

    const count = await countLivresByEditeur(42)

    expect(count).toBe(0)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ count: null, error: new Error('boom') })

    await expect(countLivresByEditeur(42)).rejects.toThrow('boom')
  })
})

describe('deleteEditeur', () => {
  let deleteMock: ReturnType<typeof vi.fn>
  let eqMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    eqMock = vi.fn().mockResolvedValue({ error: null })
    deleteMock = vi.fn().mockReturnValue({ eq: eqMock })
    fromMock.mockReturnValue({ delete: deleteMock })
  })

  it('deletes the editeur matching the id', async () => {
    await deleteEditeur(42)

    expect(fromMock).toHaveBeenCalledWith('livres_editeur')
    expect(deleteMock).toHaveBeenCalled()
    expect(eqMock).toHaveBeenCalledWith('id', 42)
  })

  it('throws when supabase returns an error', async () => {
    eqMock.mockResolvedValue({ error: new Error('boom') })

    await expect(deleteEditeur(42)).rejects.toThrow('boom')
  })
})
