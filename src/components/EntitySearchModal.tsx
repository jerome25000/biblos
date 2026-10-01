import { useEffect, useState } from 'react'
import { Modal } from './Modal'
import { t } from '../services/i18nService'

export type EntityI18nPrefix = 'auteurs' | 'editeurs'

export interface EntitySearchDescriptor<T extends { id: number }, F> {
  i18nPrefix: EntityI18nPrefix
  search: (query: string) => Promise<T[]>
  getLabel: (item: T) => string
  toFilter: (item: T) => F
}

interface EntitySearchModalProps<T extends { id: number }, F> {
  isOpen: boolean
  onClose: () => void
  onApply: (filter: F) => void
  descriptor: EntitySearchDescriptor<T, F>
}

export function EntitySearchModal<T extends { id: number }, F>({
  isOpen,
  onClose,
  onApply,
  descriptor,
}: EntitySearchModalProps<T, F>) {
  const { i18nPrefix, search, getLabel, toFilter } = descriptor
  const [query, setQuery] = useState('')
  const [suggestions, setSuggestions] = useState<T[]>([])
  const [selected, setSelected] = useState<T | null>(null)
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
      search(query)
        .then(setSuggestions)
        .catch(() => setSuggestions([]))
        .finally(() => setLoading(false))
    }, 300)

    return () => clearTimeout(timer)
  }, [query, search])

  function handleApply() {
    if (!selected) return
    onApply(toFilter(selected))
    onClose()
  }

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={t(`${i18nPrefix}.search.title`)}>
      <div className="search-form">
        <div className="search-input-wrapper">
          <input
            type="text"
            className="form-input"
            placeholder={t(`${i18nPrefix}.search.placeholder`)}
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
                  className={`search-suggestion-item${selected?.id === item.id ? ' selected' : ''}`}
                  onClick={() => setSelected(item)}
                >
                  {getLabel(item)}
                </button>
              </li>
            ))}
          </ul>
        )}

        {query.trim().length >= 2 && suggestions.length === 0 && !loading && (
          <p className="search-no-results">{t(`${i18nPrefix}.search.noResults`)}</p>
        )}

        {selected && (
          <div className="search-selected">
            {t(`${i18nPrefix}.search.selected`)}: <strong>{getLabel(selected)}</strong>
          </div>
        )}

        <div className="modal-actions">
          <button type="button" className="btn-secondary" onClick={onClose}>
            {t(`${i18nPrefix}.search.cancel`)}
          </button>
          <button
            type="button"
            className="btn-primary"
            onClick={handleApply}
            disabled={!selected}
          >
            {t(`${i18nPrefix}.search.apply`)}
          </button>
        </div>
      </div>
    </Modal>
  )
}
