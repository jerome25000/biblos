import { useEffect, useState } from 'react'
import { Modal } from './Modal'
import { t } from '../services/i18nService'
import { searchAuteurSuggestions } from '../services/searchService'
import type { Auteur } from '../types/database'
import type { AuteursFilter } from '../services/auteursService'

interface AuteurSearchModalProps {
  isOpen: boolean
  onClose: () => void
  onApply: (filter: AuteursFilter) => void
}

export function AuteurSearchModal({
  isOpen,
  onClose,
  onApply,
}: AuteurSearchModalProps) {
  const [query, setQuery] = useState('')
  const [suggestions, setSuggestions] = useState<Auteur[]>([])
  const [selected, setSelected] = useState<Auteur | null>(null)
  const [loading, setLoading] = useState(false)

  useEffect(() => {
    setQuery('')
    setSelected(null)
    setSuggestions([])
  }, [isOpen])

  useEffect(() => {
    if (!query.trim()) {
      setSuggestions([])
      return
    }

    const timer = setTimeout(() => {
      setLoading(true)
      searchAuteurSuggestions(query)
        .then(setSuggestions)
        .catch(() => setSuggestions([]))
        .finally(() => setLoading(false))
    }, 300)

    return () => clearTimeout(timer)
  }, [query])

  function handleApply() {
    if (!selected) return
    onApply({ type: 'auteur', auteurId: selected.id })
    onClose()
  }

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={t('auteurs.search.title')}>
      <div className="search-form">
        <div className="search-input-wrapper">
          <input
            type="text"
            className="form-input"
            placeholder={t('auteurs.search.placeholder')}
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
                  {item.nom} {item.prenom}
                </button>
              </li>
            ))}
          </ul>
        )}

        {query.trim().length >= 2 && suggestions.length === 0 && !loading && (
          <p className="search-no-results">{t('auteurs.search.noResults')}</p>
        )}

        {selected && (
          <div className="search-selected">
            {t('auteurs.search.selected')}: <strong>{selected.nom} {selected.prenom}</strong>
          </div>
        )}

        <div className="modal-actions">
          <button type="button" className="btn-secondary" onClick={onClose}>
            {t('auteurs.search.cancel')}
          </button>
          <button
            type="button"
            className="btn-primary"
            onClick={handleApply}
            disabled={!selected}
          >
            {t('auteurs.search.apply')}
          </button>
        </div>
      </div>
    </Modal>
  )
}
