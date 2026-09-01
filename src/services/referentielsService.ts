import { supabase } from '../supabaseClient'
import type { Auteur, Editeur, Genre, Pays, TypeLivre } from '../types/database'

export async function fetchAuteurs(): Promise<Auteur[]> {
  const { data, error } = await supabase
    .from('livres_auteur')
    .select('*')
    .order('nom', { ascending: true })

  if (error) throw error
  return (data ?? []) as Auteur[]
}

export async function fetchEditeurs(): Promise<Editeur[]> {
  const { data, error } = await supabase
    .from('livres_editeur')
    .select('*')
    .order('nom', { ascending: true })

  if (error) throw error
  return (data ?? []) as Editeur[]
}

export async function fetchGenres(): Promise<Genre[]> {
  const { data, error } = await supabase
    .from('livres_genre')
    .select('*')
    .order('genre', { ascending: true })

  if (error) throw error
  return (data ?? []) as Genre[]
}

export async function fetchTypesLivre(): Promise<TypeLivre[]> {
  const { data, error } = await supabase
    .from('livres_typelivre')
    .select('*')
    .order('type', { ascending: true })

  if (error) throw error
  return (data ?? []) as TypeLivre[]
}

export async function fetchPays(): Promise<Pays[]> {
  const { data, error } = await supabase
    .from('livres_pays')
    .select('*')
    .order('nom', { ascending: true })

  if (error) throw error
  return (data ?? []) as Pays[]
}

export async function fetchAuteurById(id: number): Promise<Auteur | null> {
  const { data, error } = await supabase
    .from('livres_auteur')
    .select('*')
    .eq('id', id)
    .single()

  if (error && error.code !== 'PGRST116') throw error
  return (data ?? null) as Auteur | null
}

export async function fetchEditeurById(id: number): Promise<Editeur | null> {
  const { data, error } = await supabase
    .from('livres_editeur')
    .select('*')
    .eq('id', id)
    .single()

  if (error && error.code !== 'PGRST116') throw error
  return (data ?? null) as Editeur | null
}
