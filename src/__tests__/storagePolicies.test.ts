import { describe, it, expect } from 'vitest'
import { readFileSync } from 'fs'
import { resolve } from 'path'
import { STORAGE_BUCKET_IMAGES } from '../constants'

const SCHEMA_PATH = resolve(__dirname, '../../bdd/schema.sql')
const schema = readFileSync(SCHEMA_PATH, 'utf-8')
const storagePolicies = schema
  .split('\n')
  .filter((line) => line.startsWith('CREATE POLICY') && line.includes('ON storage.objects'))

function findPolicy(operation: string): string {
  return storagePolicies.find((line) => line.includes(`FOR ${operation} `)) ?? ''
}

describe('storage.objects policies in schema.sql', () => {
  it('defines one policy per operation', () => {
    expect(storagePolicies).toHaveLength(4)
  })

  it('restricts every policy to the images bucket and authenticated role', () => {
    storagePolicies.forEach((policy) => {
      expect(policy).toContain(`bucket_id = '${STORAGE_BUCKET_IMAGES}'`)
      expect(policy).toContain('TO authenticated')
    })
  })

  it('allows SELECT to all authenticated users', () => {
    expect(findPolicy('SELECT')).not.toContain('is_guest')
  })

  it.each(['INSERT', 'UPDATE', 'DELETE'])('excludes guests on %s', (operation) => {
    expect(findPolicy(operation)).toContain('NOT public.is_guest()')
  })
})
