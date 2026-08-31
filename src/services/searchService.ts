import { supabase } from '../supabaseClient'
import type { Auteur, Editeur, Livre } from '../types/database'

const MIN_QUERY_LENGTH = 2

export async function searchAuteurSuggestions(
  query: string,
): Promise<Auteur[]> {
  if (query.trim().length < MIN_QUERY_LENGTH) return []

  const { data, error } = await supabase
    .from('livres_auteur')
    .select('*')
    .or(`nom.ilike.%${query}%,prenom.ilike.%${query}%`)
    .order('nom', { ascending: true })
    .limit(10)

  if (error) throw error
  return (data ?? []) as Auteur[]
}

export async function searchEditeurSuggestions(
  query: string,
): Promise<Editeur[]> {
  if (query.trim().length < MIN_QUERY_LENGTH) return []

  const { data, error } = await supabase
    .from('livres_editeur')
    .select('*')
    .ilike('nom', `%${query}%`)
    .order('nom', { ascending: true })
    .limit(10)

  if (error) throw error
  return (data ?? []) as Editeur[]
}

export async function searchTitreSuggestions(query: string): Promise<Livre[]> {
  if (query.trim().length < MIN_QUERY_LENGTH) return []

  const { data, error } = await supabase
    .from('livres_livres')
    .select('*')
    .ilike('titre', `%${query}%`)
    .order('titre', { ascending: true })
    .limit(10)

  if (error) throw error
  return (data ?? []) as Livre[]
}
