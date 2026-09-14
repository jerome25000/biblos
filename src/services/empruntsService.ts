import { supabase } from '../supabaseClient'
import type { Livre } from '../types/database'
import { pageToRange } from './utilities'
import { EMPRUNTS_PAGE_SIZE } from '../constants'

export interface EmpruntsPage {
  livres: Livre[]
  count: number
}

export async function fetchEmprunts(page: number): Promise<EmpruntsPage> {
  const { from, to } = pageToRange(page, EMPRUNTS_PAGE_SIZE)
  const { data, count, error } = await supabase
    .from('livres_livres')
    .select('*', { count: 'exact' })
    .not('emprunteur', 'is', null)
    .neq('emprunteur', '')
    .order('titre', { ascending: true })
    .range(from, to)

  if (error) throw error
  return { livres: (data ?? []) as Livre[], count: count ?? 0 }
}

export async function returnLivre(id: number): Promise<void> {
  const { error } = await supabase
    .from('livres_livres')
    .update({ emprunteur: null })
    .eq('id', id)
  if (error) throw error
}
