export interface Pays {
  id: number
  nom: string
}

export interface Auteur {
  id: number
  nom: string
  prenom: string
  anneeNaissance: number | null
  nationalite_id: number
}

export interface Illustrateur {
  id: number
  nom: string
  prenom: string
  anneeNaissance: number | null
  nationalite_id: number
}

export interface Editeur {
  id: number
  nom: string
  adresse: string
}

export interface Genre {
  id: number
  genre: string
}

export interface TypeLivre {
  id: number
  type: string
}

export interface Livre {
  id: number
  titre: string
  titreVo: string | null
  numEdition: number | null
  anneePremiereEdition: number
  numEditeur_id: number
  genre_id: number
  typeLivre_id: number
  auteur_id: number | null
  illustrateur_id: number | null
  collection: boolean
  serie: string | null
  num_serie: number | null
  dateSaisie: string | null
  dateDebutLecture: string | null
  dateFinLecture: string | null
  note: number | null
  image: string | null
  description: string | null
  commentaires: string | null
  dedicace: string | null
  emprunteur: string | null
}
