import { supabase } from '../supabaseClient'
import type { Livre } from '../types/database'
import { pageToRange } from './utilities'

export const PAGE_SIZE = 50

export interface LivresPage {
  livres: Livre[]
  count: number
}

export async function fetchLivres(page: number): Promise<LivresPage> {
  const { from, to } = pageToRange(page, PAGE_SIZE)

  const { data, count, error } = await supabase
    .from('livres_livres')
    .select('*', { count: 'exact' })
    .order('dateDebutLecture', { ascending: false })
    .not('dateDebutLecture', 'is', null)
    .range(from, to)

  if (error) throw error

  return { livres: (data ?? []) as Livre[], count: count ?? 0 }
}

export type LivreFormPayload = Omit<
  Livre,
  'id' | 'illustrateur_id' | 'image' | 'dedicace' | 'emprunteur'
>

export async function createLivre(payload: LivreFormPayload): Promise<void> {
  const { error } = await supabase.from('livres_livres').insert(payload)
  if (error) throw error
}

export async function updateLivre(
  id: number,
  payload: LivreFormPayload,
): Promise<void> {
  const { error } = await supabase
    .from('livres_livres')
    .update(payload)
    .eq('id', id)
  if (error) throw error
}
