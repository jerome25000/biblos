import { describe, expect, it, vi, beforeEach } from 'vitest'

const fromMock = vi.fn()

vi.mock('../supabaseClient', () => ({
  supabase: { from: fromMock },
}))

const {
  fetchAuteurs,
  fetchEditeurs,
  fetchGenres,
  fetchTypesLivre,
  fetchAuteurById,
  fetchEditeurById,
} = await import('../services/referentielsService')

describe('referentielsService', () => {
  let orderMock: ReturnType<typeof vi.fn>
  let selectMock: ReturnType<typeof vi.fn>

  beforeEach(() => {
    orderMock = vi.fn().mockResolvedValue({ data: [], error: null })
    selectMock = vi.fn(() => ({ order: orderMock }))
    fromMock.mockClear()
    fromMock.mockReturnValue({ select: selectMock })
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

  describe('fetchAuteurById', () => {
    it('fetches auteur by id using .single()', async () => {
      const auteur = { id: 42, nom: 'Hugo', prenom: 'Victor', anneeNaissance: 1802, nationalite_id: 1 }
      const eqMock = vi.fn().mockReturnValue({ single: vi.fn().mockResolvedValue({ data: auteur, error: null }) })
      selectMock.mockReturnValue({ eq: eqMock })

      const result = await fetchAuteurById(42)

      expect(fromMock).toHaveBeenCalledWith('livres_auteur')
      expect(eqMock).toHaveBeenCalledWith('id', 42)
      expect(result).toEqual(auteur)
    })

    it('returns null if auteur not found', async () => {
      const eqMock = vi.fn().mockReturnValue({ single: vi.fn().mockResolvedValue({ data: null, error: { code: 'PGRST116' } }) })
      selectMock.mockReturnValue({ eq: eqMock })

      const result = await fetchAuteurById(999)

      expect(result).toBeNull()
    })
  })

  describe('fetchEditeurById', () => {
    it('fetches editeur by id using .single()', async () => {
      const editeur = { id: 99, nom: 'Gallimard', adresse: 'Paris' }
      const eqMock = vi.fn().mockReturnValue({ single: vi.fn().mockResolvedValue({ data: editeur, error: null }) })
      selectMock.mockReturnValue({ eq: eqMock })

      const result = await fetchEditeurById(99)

      expect(fromMock).toHaveBeenCalledWith('livres_editeur')
      expect(eqMock).toHaveBeenCalledWith('id', 99)
      expect(result).toEqual(editeur)
    })

    it('returns null if editeur not found', async () => {
      const eqMock = vi.fn().mockReturnValue({ single: vi.fn().mockResolvedValue({ data: null, error: { code: 'PGRST116' } }) })
      selectMock.mockReturnValue({ eq: eqMock })

      const result = await fetchEditeurById(999)

      expect(result).toBeNull()
    })
  })
})
