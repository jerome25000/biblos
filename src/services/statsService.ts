import { supabase } from '../supabaseClient'
import type { Auteur, Livre } from '../types/database'
import { fetchAuteurs } from './referentielsService'
import { STATS_TOP_AUTEURS_LIMIT, SUPABASE_FETCH_PAGE_SIZE } from '../constants'
import {
  countByKey,
  fetchAllPages,
  isoToUtcYear,
  sortCountEntriesByKeyDesc,
  topCountEntries,
} from './utilities'

export type LivreLu = Pick<Livre, 'id' | 'titre' | 'auteur_id' | 'dateFinLecture'>
export type LivreAuteur = Pick<Livre, 'id' | 'titre' | 'auteur_id'>

export interface StatRow {
  key: string | number
  cells: (string | number)[]
  books: string[]
}

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
      .select('id, titre, auteur_id, dateFinLecture')
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
  livres: Pick<Livre, 'auteur_id'>[],
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

export async function fetchLivresAuteurs(): Promise<LivreAuteur[]> {
  return fetchAllPages<LivreAuteur>(async (from, to) => {
    const { data, error } = await supabase
      .from('livres_livres')
      .select('id, titre, auteur_id')
      .order('id', { ascending: true })
      .range(from, to)
    return { data: data as LivreAuteur[] | null, error }
  }, SUPABASE_FETCH_PAGE_SIZE)
}

const titles = (livres: Pick<Livre, 'titre'>[]): string[] => livres.map((l) => l.titre)

const auteurRow = (livres: LivreAuteur[]) => (s: AuteurStat): StatRow => ({
  key: s.auteurId,
  cells: [s.nom, s.count],
  books: titles(livres.filter((l) => l.auteur_id === s.auteurId)),
})

export function yearRow(livres: LivreLu[]) {
  return (s: AnneeStat): StatRow => ({
    key: s.annee,
    cells: [s.annee, s.count],
    books: titles(
      livres
        .filter((l) => isoToUtcYear(l.dateFinLecture) === s.annee)
        .sort((a, b) => (a.dateFinLecture ?? '').localeCompare(b.dateFinLecture ?? '')),
    ),
  })
}

export async function loadLivresLusParAnnee(): Promise<StatRow[]> {
  const livres = await fetchLivresLus()
  return computeAnneeStats(livres).map(yearRow(livres))
}

export async function loadTopAuteursLus(): Promise<StatRow[]> {
  const [livres, auteurs] = await Promise.all([fetchLivresLus(), fetchAuteurs()])
  return computeTopAuteurStats(livres, auteurs).map(auteurRow(livres))
}

export async function loadTopAuteursCollectionnes(): Promise<StatRow[]> {
  const [livres, auteurs] = await Promise.all([fetchLivresAuteurs(), fetchAuteurs()])
  return computeTopAuteurStats(livres, auteurs).map(auteurRow(livres))
}
