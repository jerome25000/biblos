import { describe, it, expect } from 'vitest'
import { render, screen } from '@testing-library/react'
import { BookCard } from '../components/BookCard'
import type { Livre, Auteur } from '../types/database'

describe('BookCard', () => {
  const mockAuteur: Auteur = {
    id: 1,
    nom: 'Hugo',
    prenom: 'Victor',
    anneeNaissance: 1802,
    nationalite_id: 1,
  }

  const mockLivre: Livre = {
    id: 1,
    titre: 'Les Misérables',
    titreVo: null,
    numEdition: 1,
    anneePremiereEdition: 1862,
    numEditeur_id: 1,
    genre_id: 1,
    typeLivre_id: 1,
    auteur_id: 1,
    illustrateur_id: null,
    collection: false,
    serie: null,
    num_serie: null,
    dateSaisie: '2026-01-01T00:00:00Z',
    dateDebutLecture: '2026-01-15T00:00:00Z',
    dateFinLecture: '2026-02-15T00:00:00Z',
    note: 4.5,
    image: null,
    description: 'A great novel',
    commentaires: 'Amazing characters',
    dedicace: null,
    emprunteur: null,
  }

  it('renders book title', () => {
    render(<BookCard livre={mockLivre} auteur={mockAuteur} />)
    expect(screen.getByText('Les Misérables')).toBeInTheDocument()
  })

  it('renders author name when provided', () => {
    render(<BookCard livre={mockLivre} auteur={mockAuteur} />)
    expect(screen.getByText('Victor Hugo')).toBeInTheDocument()
  })

  it('does not render author when auteur is null', () => {
    render(<BookCard livre={mockLivre} auteur={null} />)
    expect(screen.queryByText(/Victor/)).not.toBeInTheDocument()
  })

  it('renders reading dates when present', () => {
    render(<BookCard livre={mockLivre} auteur={mockAuteur} />)
    // Dates are formatted via formatDate utility
    expect(screen.getByText('15/01/2026')).toBeInTheDocument()
    expect(screen.getByText('15/02/2026')).toBeInTheDocument()
  })

  it('renders description label when description exists', () => {
    render(<BookCard livre={mockLivre} auteur={mockAuteur} />)
    expect(screen.getByText('Description')).toBeInTheDocument()
  })

  it('renders commentaires label when commentaires exists', () => {
    render(<BookCard livre={mockLivre} auteur={mockAuteur} />)
    expect(screen.getByText('Commentaires')).toBeInTheDocument()
  })

  it('does not render description label when description is empty', () => {
    const livreNoDesc = { ...mockLivre, description: null }
    render(<BookCard livre={livreNoDesc} auteur={mockAuteur} />)
    expect(screen.queryByText('Description')).not.toBeInTheDocument()
  })

  it('does not render commentaires label when commentaires is empty', () => {
    const livreNoComment = { ...mockLivre, commentaires: null }
    render(<BookCard livre={livreNoComment} auteur={mockAuteur} />)
    expect(screen.queryByText('Commentaires')).not.toBeInTheDocument()
  })

  it('renders placeholder for missing image', () => {
    render(<BookCard livre={mockLivre} auteur={mockAuteur} />)
    const placeholder = document.querySelector('.book-card-image-placeholder')
    expect(placeholder).toBeInTheDocument()
  })
})
