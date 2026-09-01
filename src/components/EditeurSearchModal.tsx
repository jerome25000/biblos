import { useEffect, useState } from 'react'
import { Modal } from './Modal'
import { t } from '../services/i18nService'
import { searchEditeurSuggestions } from '../services/searchService'
import type { Editeur } from '../types/database'
import type { EditeursFilter } from '../services/editeursService'

interface EditeurSearchModalProps {
  isOpen: boolean
  onClose: () => void
  onApply: (filter: EditeursFilter) => void
}

export function EditeurSearchModal({
  isOpen,
  onClose,
  onApply,
}: EditeurSearchModalProps) {
  const [query, setQuery] = useState('')
  const [suggestions, setSuggestions] = useState<Editeur[]>([])
  const [selected, setSelected] = useState<Editeur | null>(null)
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
      searchEditeurSuggestions(query)
        .then(setSuggestions)
        .catch(() => setSuggestions([]))
        .finally(() => setLoading(false))
    }, 300)

    return () => clearTimeout(timer)
  }, [query])

  function handleApply() {
    if (!selected) return
    onApply({ type: 'editeur', editeurId: selected.id })
    onClose()
  }

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={t('editeurs.search.title')}>
      <div className="search-form">
        <div className="search-input-wrapper">
          <input
            type="text"
            className="form-input"
            placeholder={t('editeurs.search.placeholder')}
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
                  {item.nom}
                </button>
              </li>
            ))}
          </ul>
        )}

        {query.trim().length >= 2 && suggestions.length === 0 && !loading && (
          <p className="search-no-results">{t('editeurs.search.noResults')}</p>
        )}

        {selected && (
          <div className="search-selected">
            {t('editeurs.search.selected')}: <strong>{selected.nom}</strong>
          </div>
        )}

        <div className="modal-actions">
          <button type="button" className="btn-secondary" onClick={onClose}>
            {t('editeurs.search.cancel')}
          </button>
          <button
            type="button"
            className="btn-primary"
            onClick={handleApply}
            disabled={!selected}
          >
            {t('editeurs.search.apply')}
          </button>
        </div>
      </div>
    </Modal>
  )
}
