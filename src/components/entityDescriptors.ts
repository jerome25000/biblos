import {
  deleteAuteur,
  countLivresByAuteur,
  type AuteursFilter,
} from '../services/auteursService'
import {
  deleteEditeur,
  countLivresByEditeur,
  type EditeursFilter,
} from '../services/editeursService'
import {
  searchAuteurSuggestions,
  searchEditeurSuggestions,
} from '../services/searchService'
import type { Auteur, Editeur } from '../types/database'
import type { EntitySearchDescriptor } from './EntitySearchModal'
import type { EntityDeleteDescriptor } from './EntityDeleteConfirmModal'

const auteurLabel = (a: Auteur) => `${a.nom} ${a.prenom}`
const editeurLabel = (e: Editeur) => e.nom

export const auteurSearchDescriptor: EntitySearchDescriptor<Auteur, AuteursFilter> = {
  i18nPrefix: 'auteurs',
  search: searchAuteurSuggestions,
  getLabel: auteurLabel,
  toFilter: (a) => ({ type: 'auteur', auteurId: a.id }),
}

export const editeurSearchDescriptor: EntitySearchDescriptor<Editeur, EditeursFilter> = {
  i18nPrefix: 'editeurs',
  search: searchEditeurSuggestions,
  getLabel: editeurLabel,
  toFilter: (e) => ({ type: 'editeur', editeurId: e.id }),
}

export const auteurDeleteDescriptor: EntityDeleteDescriptor<Auteur> = {
  i18nPrefix: 'auteurs',
  getLabel: auteurLabel,
  remove: deleteAuteur,
  countLivres: countLivresByAuteur,
}

export const editeurDeleteDescriptor: EntityDeleteDescriptor<Editeur> = {
  i18nPrefix: 'editeurs',
  getLabel: editeurLabel,
  remove: deleteEditeur,
  countLivres: countLivresByEditeur,
}
