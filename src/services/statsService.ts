import { supabase } from '../supabaseClient'
import type { Auteur, Livre } from '../types/database'
import { STATS_TOP_AUTEURS_LIMIT, SUPABASE_FETCH_PAGE_SIZE } from '../constants'
import {
  countByKey,
  fetchAllPages,
  isoToUtcYear,
  sortCountEntriesByKeyDesc,
  topCountEntries,
} from './utilities'

export type LivreLu = Pick<Livre, 'id' | 'auteur_id' | 'dateFinLecture'>

export interface AnneeStat {
  annee: number
  count: number
}

export interface AuteurStat {
  auteurId: number
  nom: string
  count: number
}

export async function fetchLivresLus(): Promise<LivreLu[]> {
  return fetchAllPages<LivreLu>(async (from, to) => {
    const { data, error } = await supabase
      .from('livres_livres')
      .select('id, auteur_id, dateFinLecture')
      .not('dateFinLecture', 'is', null)
      .order('id', { ascending: true })
      .range(from, to)
    return { data: data as LivreLu[] | null, error }
  }, SUPABASE_FETCH_PAGE_SIZE)
}

export function computeAnneeStats(livres: LivreLu[]): AnneeStat[] {
  const counts = countByKey(livres, (livre) =>
    isoToUtcYear(livre.dateFinLecture),
  )
  return sortCountEntriesByKeyDesc(counts).map(({ key, count }) => ({
    annee: key,
    count,
  }))
}

export function computeTopAuteurStats(
  livres: LivreLu[],
  auteurs: Auteur[],
): AuteurStat[] {
  const auteursById = new Map(auteurs.map((auteur) => [auteur.id, auteur]))
  const counts = countByKey(livres, (livre) => livre.auteur_id)
  const topEntries = topCountEntries(counts, STATS_TOP_AUTEURS_LIMIT)

  return topEntries.map(({ key, count }) => {
    const auteur = auteursById.get(key)
    return {
      auteurId: key,
      nom: auteur ? `${auteur.prenom} ${auteur.nom}` : '',
      count,
    }
  })
}
