import { supabase } from '../supabaseClient'

const TABLES = [
  'livres_pays',
  'livres_auteur',
  'livres_illustrateur',
  'livres_editeur',
  'livres_genre',
  'livres_typelivre',
  'livres_livres',
]

function escapeString(value: string | null): string {
  if (value === null) return 'NULL'
  return `'${value.replace(/'/g, "''")}'`
}

function formatValue(value: unknown): string {
  if (value === null || value === undefined) return 'NULL'
  if (typeof value === 'string') return escapeString(value)
  if (typeof value === 'boolean') return value ? 'true' : 'false'
  if (typeof value === 'number') return String(value)
  if (value instanceof Date) return escapeString(value.toISOString())
  return escapeString(String(value))
}

async function getTableData(tableName: string): Promise<Record<string, unknown>[]> {
  const allData: Record<string, unknown>[] = []
  const pageSize = 1000
  let offset = 0
  let hasMore = true

  while (hasMore) {
    const { data, error } = await supabase
      .from(tableName)
      .select('*', { count: 'exact' })
      .range(offset, offset + pageSize - 1)

    if (error) throw error

    if (!data || data.length === 0) {
      hasMore = false
    } else {
      allData.push(...data)
      if (data.length < pageSize) {
        hasMore = false
      } else {
        offset += pageSize
      }
    }
  }

  return allData
}

function generateInsertSQL(
  tableName: string,
  rows: Record<string, unknown>[],
): string {
  if (rows.length === 0) return ''

  const columns = Object.keys(rows[0])
  const columnList = columns.map((col) => `"${col}"`).join(', ')

  const values = rows
    .map((row) => {
      const rowValues = columns.map((col) => formatValue(row[col]))
      return `(${rowValues.join(', ')})`
    })
    .join(',\n  ')

  return `INSERT INTO "${tableName}" (${columnList}) VALUES\n  ${values};\n`
}

export async function exportDatabaseAsSQL(): Promise<string> {
  const timestamp = new Date().toISOString()
  let sql = `-- Database export
-- Generated: ${timestamp}
-- This file contains INSERT statements for all tables in the Biblos database

BEGIN;

`

  for (const tableName of TABLES) {
    const data = await getTableData(tableName)
    if (data.length > 0) {
      const insertSQL = generateInsertSQL(tableName, data)
      sql += insertSQL
    }
  }

  sql += `
COMMIT;
`

  return sql
}

export function downloadSQL(content: string, filename: string): void {
  const blob = new Blob([content], { type: 'text/plain;charset=utf-8' })
  const link = document.createElement('a')
  link.href = URL.createObjectURL(blob)
  link.download = filename
  link.click()
  URL.revokeObjectURL(link.href)
}
