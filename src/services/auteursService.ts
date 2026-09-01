import { supabase } from '../supabaseClient'
import type { Auteur } from '../types/database'
import { pageToRange } from './utilities'
import { AUTEURS_PAGE_SIZE } from '../constants'

export { AUTEURS_PAGE_SIZE }

export interface AuteursPage {
  auteurs: Auteur[]
  count: number
}

export type AuteursFilter = { type: 'auteur'; auteurId: number }

export async function fetchAuteursPage(
  page: number,
  filter?: AuteursFilter,
): Promise<AuteursPage> {
  const { from, to } = pageToRange(page, AUTEURS_PAGE_SIZE)

  let query = supabase
    .from('livres_auteur')
    .select('*', { count: 'exact' })
    .order('nom', { ascending: true })

  if (filter) {
    query = query.eq('id', filter.auteurId)
  }

  const { data, count, error } = await query.range(from, to)

  if (error) throw error

  return { auteurs: (data ?? []) as Auteur[], count: count ?? 0 }
}

export type AuteurFormPayload = Omit<Auteur, 'id'>

export async function createAuteur(payload: AuteurFormPayload): Promise<void> {
  const { error } = await supabase.from('livres_auteur').insert(payload)
  if (error) throw error
}

export async function updateAuteur(
  id: number,
  payload: AuteurFormPayload,
): Promise<void> {
  const { error } = await supabase
    .from('livres_auteur')
    .update(payload)
    .eq('id', id)
  if (error) throw error
}
