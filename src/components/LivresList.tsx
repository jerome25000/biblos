import { useCallback, useEffect, useState } from 'react'
import { fetchLivres, PAGE_SIZE } from '../services/livresService'
import type { Livre, Auteur, Editeur } from '../types/database'
import type { LivresFilter } from '../services/livresService'
import { t } from '../services/i18nService'
import { formatDate } from '../services/utilities'
import { Pagination } from './Pagination'
import { LivreFormModal } from './LivreFormModal'
import { LivreSearchModal } from './LivreSearchModal'
import { fetchAuteurById, fetchEditeurById, fetchAuteurs, fetchEditeurs } from '../services/referentielsService'

export function LivresList() {
  const [page, setPage] = useState(1)
  const [livres, setLivres] = useState<Livre[]>([])
  const [count, setCount] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(false)
  const [editingLivre, setEditingLivre] = useState<Livre | null>(null)
  const [modalOpen, setModalOpen] = useState(false)
  const [searchModalOpen, setSearchModalOpen] = useState(false)
  const [activeFilter, setActiveFilter] = useState<LivresFilter | null>(null)
  const [filterItemData, setFilterItemData] = useState<Auteur | Editeur | null>(null)
  const [auteurs, setAuteurs] = useState<Map<number, Auteur>>(new Map())
  const [editeurs, setEditeurs] = useState<Map<number, Editeur>>(new Map())

  const loadLivres = useCallback(() => {
    let cancelled = false
    setLoading(true)
    setError(false)

    fetchLivres(page, activeFilter ?? undefined)
      .then((result) => {
        if (cancelled) return
        setLivres(result.livres)
        setCount(result.count)
      })
      .catch(() => {
        if (!cancelled) setError(true)
      })
      .finally(() => {
        if (!cancelled) setLoading(false)
      })

    return () => {
      cancelled = true
    }
  }, [page, activeFilter])

  useEffect(() => loadLivres(), [loadLivres])

  useEffect(() => {
    Promise.all([fetchAuteurs(), fetchEditeurs()])
      .then(([auteursData, editorsData]) => {
        setAuteurs(new Map(auteursData.map((a) => [a.id, a])))
        setEditeurs(new Map(editorsData.map((e) => [e.id, e])))
      })
      .catch(() => {
        setAuteurs(new Map())
        setEditeurs(new Map())
      })
  }, [])

  useEffect(() => {
    if (!activeFilter) {
      setFilterItemData(null)
      return
    }

    if (activeFilter.type === 'auteur') {
      fetchAuteurById(activeFilter.auteurId)
        .then(setFilterItemData)
        .catch(() => setFilterItemData(null))
    } else if (activeFilter.type === 'editeur') {
      fetchEditeurById(activeFilter.editeurId)
        .then(setFilterItemData)
        .catch(() => setFilterItemData(null))
    }
  }, [activeFilter])

  function openCreateModal() {
    setEditingLivre(null)
    setModalOpen(true)
  }

  function openEditModal(livre: Livre) {
    setEditingLivre(livre)
    setModalOpen(true)
  }

  function closeModal() {
    setModalOpen(false)
  }

  function handleSearchApply(filter: LivresFilter) {
    setActiveFilter(filter)
    setPage(1)
  }

  function clearFilter() {
    setActiveFilter(null)
    setPage(1)
  }

  function getFilterLabel(): string {
    if (!activeFilter) return ''
    if (activeFilter.type === 'titre') return activeFilter.titre
    if (activeFilter.type === 'auteur' && filterItemData && 'prenom' in filterItemData) {
      return `${filterItemData.nom} ${filterItemData.prenom}`
    }
    if (activeFilter.type === 'editeur' && filterItemData && 'adresse' in filterItemData) {
      return filterItemData.nom
    }
    return ''
  }

  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <div className="books-workspace-title">
          <h1>{t('livres.title')}</h1>
          {activeFilter && (
            <div className="active-filter">
              <span>{t('livres.search.activeFilter', { value: getFilterLabel() })}</span>
              <button
                type="button"
                className="btn-secondary btn-small"
                onClick={clearFilter}
              >
                {t('livres.search.clearFilter')}
              </button>
            </div>
          )}
        </div>
        <div className="books-workspace-actions">
          <button
            type="button"
            className="btn-secondary"
            onClick={() => setSearchModalOpen(true)}
          >
            <svg viewBox="0 0 24 24" width="16" height="16" aria-hidden="true">
              <path
                d="M11 19c-4.4 0-8-3.6-8-8s3.6-8 8-8 8 3.6 8 8-3.6 8-8 8m8.5-17c-.5 0-1 .4-1 1s.4 1 1 1 1-.4 1-1-.4-1-1-1m-1 8c0 2.8-2.2 5-5 5s-5-2.2-5-5 2.2-5 5-5 5 2.2 5 5"
                fill="currentColor"
              />
            </svg>
            {t('livres.search.button')}
          </button>
          <button
            type="button"
            className="btn-primary"
            onClick={openCreateModal}
          >
            <svg viewBox="0 0 24 24" width="16" height="16" aria-hidden="true">
              <path
                d="M12 5v14M5 12h14"
                stroke="currentColor"
                strokeWidth="2.4"
                strokeLinecap="round"
                fill="none"
              />
            </svg>
            {t('livres.add')}
          </button>
        </div>
      </div>
      {loading && (
        <div className="books-empty">
          <span className="spinner-large" />
          <p>{t('livres.loading')}</p>
        </div>
      )}
      {error && (
        <p role="alert" className="error-message">
          {t('livres.error')}
        </p>
      )}
      {!loading && !error && livres.length === 0 && (
        <p className="books-empty">{t('livres.empty')}</p>
      )}
      {!loading && !error && livres.length > 0 && (
        <>
          <table>
            <thead>
              <tr>
                <th aria-hidden="true"></th>
                <th>{t('livres.column.titre')}</th>
                <th>{t('livres.column.auteur')}</th>
                <th>{t('livres.column.editeur')}</th>
                <th>{t('livres.column.dateDebutLecture')}</th>
                <th>{t('livres.column.dateFinLecture')}</th>
                <th>{t('livres.column.note')}</th>
              </tr>
            </thead>
            <tbody>
              {livres.map((livre) => {
                const auteur = livre.auteur_id ? auteurs.get(livre.auteur_id) : null
                const editeur = editeurs.get(livre.numEditeur_id)
                return (
                  <tr key={livre.id}>
                    <td>
                      <button
                        type="button"
                        className="icon-btn"
                        aria-label={t('livres.edit')}
                        onClick={() => openEditModal(livre)}
                      >
                        <svg
                          viewBox="0 0 24 24"
                          width="16"
                          height="16"
                          aria-hidden="true"
                        >
                          <path
                            d="M4 20h4L18.5 9.5a2.121 2.121 0 0 0-3-3L5 17v3z"
                            stroke="currentColor"
                            strokeWidth="1.6"
                            strokeLinejoin="round"
                            fill="none"
                          />
                        </svg>
                      </button>
                    </td>
                    <td>{livre.titre}</td>
                    <td>{auteur ? `${auteur.prenom} ${auteur.nom}` : ''}</td>
                    <td>{editeur?.nom ?? ''}</td>
                    <td>{formatDate(livre.dateDebutLecture)}</td>
                    <td>{formatDate(livre.dateFinLecture)}</td>
                    <td>{livre.note ?? ''}</td>
                  </tr>
                )
              })}
            </tbody>
          </table>
          <Pagination
            page={page}
            count={count}
            pageSize={PAGE_SIZE}
            onPageChange={setPage}
          />
        </>
      )}
      <LivreFormModal
        isOpen={modalOpen}
        onClose={closeModal}
        onSaved={loadLivres}
        livre={editingLivre}
      />
      <LivreSearchModal
        isOpen={searchModalOpen}
        onClose={() => setSearchModalOpen(false)}
        onApply={handleSearchApply}
      />
    </section>
  )
}
