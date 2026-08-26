import { useEffect, useState } from 'react'
import { Modal } from './Modal'
import { t } from '../services/i18nService'
import {
  searchAuteurSuggestions,
  searchEditeurSuggestions,
  searchTitreSuggestions,
} from '../services/searchService'
import type {
  Auteur,
  Editeur,
  Livre,
} from '../types/database'
import type { LivresFilter } from '../services/livresService'

interface LivreSearchModalProps {
  isOpen: boolean
  onClose: () => void
  onApply: (filter: LivresFilter) => void
}

type SearchCriteria = 'titre' | 'auteur' | 'editeur'
type SuggestionItem = Livre | Auteur | Editeur

export function LivreSearchModal({
  isOpen,
  onClose,
  onApply,
}: LivreSearchModalProps) {
  const [criteria, setCriteria] = useState<SearchCriteria>('titre')
  const [query, setQuery] = useState('')
  const [suggestions, setSuggestions] = useState<SuggestionItem[]>([])
  const [selected, setSelected] = useState<SuggestionItem | null>(null)
  const [loading, setLoading] = useState(false)

  useEffect(() => {
    setQuery('')
    setSelected(null)
    setSuggestions([])
  }, [isOpen])

  useEffect(() => {
    setSelected(null)
    setSuggestions([])
  }, [criteria])

  useEffect(() => {
    if (!query.trim()) {
      setSuggestions([])
      return
    }

    const timer = setTimeout(() => {
      setLoading(true)
      const searchFn =
        criteria === 'titre'
          ? searchTitreSuggestions
          : criteria === 'auteur'
            ? searchAuteurSuggestions
            : searchEditeurSuggestions

      searchFn(query)
        .then(setSuggestions)
        .catch(() => setSuggestions([]))
        .finally(() => setLoading(false))
    }, 300)

    return () => clearTimeout(timer)
  }, [query, criteria])

  function handleApply() {
    if (!selected) return

    const filter: LivresFilter =
      criteria === 'titre'
        ? { type: 'titre', titre: (selected as Livre).titre }
        : criteria === 'auteur'
          ? { type: 'auteur', auteurId: (selected as Auteur).id }
          : { type: 'editeur', editeurId: (selected as Editeur).id }

    onApply(filter)
    onClose()
  }

  function getSelectedLabel(): string {
    if (!selected) return ''
    if ('titre' in selected) return selected.titre
    if ('prenom' in selected) return `${selected.nom} ${selected.prenom}`
    return selected.nom
  }

  return (
    <Modal
      isOpen={isOpen}
      onClose={onClose}
      title={t('livres.search.title')}
    >
      <div className="search-form">
        <div className="search-criteria">
          <label>
            <input
              type="radio"
              value="titre"
              checked={criteria === 'titre'}
              onChange={(e) => setCriteria(e.target.value as SearchCriteria)}
              aria-label={t('livres.search.criteria.titre')}
            />
            {t('livres.search.criteria.titre')}
          </label>
          <label>
            <input
              type="radio"
              value="auteur"
              checked={criteria === 'auteur'}
              onChange={(e) => setCriteria(e.target.value as SearchCriteria)}
              aria-label={t('livres.search.criteria.auteur')}
            />
            {t('livres.search.criteria.auteur')}
          </label>
          <label>
            <input
              type="radio"
              value="editeur"
              checked={criteria === 'editeur'}
              onChange={(e) => setCriteria(e.target.value as SearchCriteria)}
              aria-label={t('livres.search.criteria.editeur')}
            />
            {t('livres.search.criteria.editeur')}
          </label>
        </div>

        <div className="search-input-wrapper">
          <input
            type="text"
            className="form-input"
            placeholder={t('livres.search.placeholder')}
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            autoFocus
          />
          {loading && <span className="spinner" />}
        </div>

        {suggestions.length > 0 && (
          <ul className="search-suggestions">
            {suggestions.map((item) => (
              <li key={item.id}>
                <button
                  type="button"
                  className="search-suggestion-item"
                  aria-selected={selected?.id === item.id}
                  onClick={() => setSelected(item)}
                >
                  {'titre' in item
                    ? item.titre
                    : 'prenom' in item
                      ? `${item.nom} ${item.prenom}`
                      : item.nom}
                </button>
              </li>
            ))}
          </ul>
        )}

        {query.trim().length >= 2 && suggestions.length === 0 && !loading && (
          <p className="search-no-results">{t('livres.search.noResults')}</p>
        )}

        {selected && (
          <div className="search-selected">
            {t('livres.search.selected')}: <strong>{getSelectedLabel()}</strong>
          </div>
        )}

        <div className="modal-actions">
          <button
            type="button"
            className="btn-secondary"
            onClick={onClose}
          >
            {t('livres.search.cancel')}
          </button>
          <button
            type="button"
            className="btn-primary"
            onClick={handleApply}
            disabled={!selected}
          >
            {t('livres.search.apply')}
          </button>
        </div>
      </div>
    </Modal>
  )
}
