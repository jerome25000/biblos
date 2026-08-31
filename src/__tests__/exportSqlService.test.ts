import { describe, it, expect, vi, beforeEach } from 'vitest'

const mockRange = vi.fn().mockResolvedValue({ data: [], error: null })
const mockSelect = vi.fn().mockReturnValue({ range: mockRange })
const mockFrom = vi.fn().mockReturnValue({ select: mockSelect })

vi.mock('../supabaseClient', () => ({
  supabase: {
    from: mockFrom,
  },
}))

const { exportDatabaseAsSQL } = await import('../services/exportSqlService')

describe('exportSqlService', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    mockRange.mockResolvedValue({ data: [], error: null })
    mockSelect.mockReturnValue({ range: mockRange })
    mockFrom.mockReturnValue({ select: mockSelect })
  })

  it('should generate SQL with proper BEGIN and COMMIT statements', async () => {
    const sql = await exportDatabaseAsSQL()

    expect(sql).toContain('BEGIN;')
    expect(sql).toContain('COMMIT;')
    expect(sql).toContain('-- Database export')
  })

  it('should generate INSERT statements for tables with data', async () => {
    const mockData = [
      { id: 1, nom: "France" },
    ]
    mockRange.mockResolvedValue({ data: mockData, error: null })

    const sql = await exportDatabaseAsSQL()

    expect(sql).toContain('INSERT INTO')
    expect(sql).toContain('France')
  })

  it('should properly escape single quotes in strings', async () => {
    const mockData = [
      { id: 1, nom: "L'Île" },
    ]
    mockRange.mockResolvedValue({ data: mockData, error: null })

    const sql = await exportDatabaseAsSQL()

    expect(sql).toContain("L''Île")
  })

  it('should handle NULL values correctly', async () => {
    const mockData = [
      { id: 1, nom: "France", description: null },
    ]
    mockRange.mockResolvedValue({ data: mockData, error: null })

    const sql = await exportDatabaseAsSQL()

    expect(sql).toContain('NULL')
  })

  it('should handle boolean values correctly', async () => {
    const mockData = [
      { id: 1, collection: true },
    ]
    mockRange.mockResolvedValue({ data: mockData, error: null })

    const sql = await exportDatabaseAsSQL()

    expect(sql).toContain('true')
  })

  it('should query all required tables', async () => {
    const mockData: Record<string, unknown>[] = []
    mockRange.mockResolvedValue({ data: mockData, error: null })

    await exportDatabaseAsSQL()

    const tables = [
      'livres_pays',
      'livres_auteur',
      'livres_illustrateur',
      'livres_editeur',
      'livres_genre',
      'livres_typelivre',
      'livres_livres',
    ]

    tables.forEach((table) => {
      expect(mockFrom).toHaveBeenCalledWith(table)
    })
  })

  it('should fetch paginated data when more than 1000 rows', async () => {
    const page1 = Array.from({ length: 1000 }, (_, i) => ({ id: i + 1, nom: `Item ${i + 1}` }))
    const page2 = [{ id: 1001, nom: 'Item 1001' }]

    mockRange
      .mockResolvedValueOnce({ data: page1, error: null })
      .mockResolvedValueOnce({ data: page2, error: null })

    const sql = await exportDatabaseAsSQL()

    expect(sql).toContain('Item 1001')
  })
})
