import { supabase } from '../supabaseClient'
import type { Auteur } from '../types/database'
import { pageToRange, countByKey } from './utilities'
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

export async function countLivresByAuteur(auteurId: number): Promise<number> {
  const { count, error } = await supabase
    .from('livres_livres')
    .select('*', { count: 'exact', head: true })
    .eq('auteur_id', auteurId)
  if (error) throw error
  return count ?? 0
}

export async function countLivresByAuteurs(
  auteurIds: number[],
): Promise<Map<number, number>> {
  if (auteurIds.length === 0) return new Map()

  const { data, error } = await supabase
    .from('livres_livres')
    .select('auteur_id')
    .in('auteur_id', auteurIds)

  if (error) throw error

  return countByKey((data ?? []) as { auteur_id: number | null }[], (row) => row.auteur_id)
}

export async function deleteAuteur(id: number): Promise<void> {
  const { error } = await supabase.from('livres_auteur').delete().eq('id', id)
  if (error) throw error
}
