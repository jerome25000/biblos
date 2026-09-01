import { supabase } from '../supabaseClient'
import type { Editeur } from '../types/database'
import { pageToRange } from './utilities'
import { EDITEURS_PAGE_SIZE } from '../constants'

export { EDITEURS_PAGE_SIZE }

export interface EditeursPage {
  editeurs: Editeur[]
  count: number
}

export type EditeursFilter = { type: 'editeur'; editeurId: number }

export async function fetchEditeursPage(
  page: number,
  filter?: EditeursFilter,
): Promise<EditeursPage> {
  const { from, to } = pageToRange(page, EDITEURS_PAGE_SIZE)

  let query = supabase
    .from('livres_editeur')
    .select('*', { count: 'exact' })
    .order('nom', { ascending: true })

  if (filter) {
    query = query.eq('id', filter.editeurId)
  }

  const { data, count, error } = await query.range(from, to)

  if (error) throw error

  return { editeurs: (data ?? []) as Editeur[], count: count ?? 0 }
}

export type EditeurFormPayload = Omit<Editeur, 'id'>

export async function createEditeur(payload: EditeurFormPayload): Promise<void> {
  const { error } = await supabase.from('livres_editeur').insert(payload)
  if (error) throw error
}

export async function updateEditeur(
  id: number,
  payload: EditeurFormPayload,
): Promise<void> {
  const { error } = await supabase
    .from('livres_editeur')
    .update(payload)
    .eq('id', id)
  if (error) throw error
}

export async function countLivresByEditeur(editeurId: number): Promise<number> {
  const { count, error } = await supabase
    .from('livres_livres')
    .select('*', { count: 'exact', head: true })
    .eq('numEditeur_id', editeurId)
  if (error) throw error
  return count ?? 0
}

export async function deleteEditeur(id: number): Promise<void> {
  const { error } = await supabase.from('livres_editeur').delete().eq('id', id)
  if (error) throw error
}
