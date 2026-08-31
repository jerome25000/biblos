import { useCallback, useEffect, useState } from 'react'
import { fetchLivres, PAGE_SIZE } from '../services/livresService'
import type { Livre, Auteur, Editeur } from '../types/database'
import type { LivresFilter } from '../services/livresService'
import { t } from '../services/i18nService'
import { formatDate } from '../services/utilities'
import { Pagination } from './Pagination'
import { LivreFormModal } from './LivreFormModal'
import { LivreSearchModal } from './LivreSearchModal'
import { StarRating } from './StarRating'
import { fetchAuteurById, fetchEditeurById, fetchAuteurs, fetchEditeurs } from '../services/referentielsService'
import IconSearch from '../assets/icons/search.svg?react'
import IconPlus from '../assets/icons/plus.svg?react'
import IconEdit from '../assets/icons/edit.svg?react'
import IconGrid from '../assets/icons/grid.svg?react'
import IconList from '../assets/icons/list.svg?react'
import { BookCard } from './BookCard'

const VIEW_MODE_TABLE = 'table'
const VIEW_MODE_CARDS = 'cards'

type ViewMode = typeof VIEW_MODE_TABLE | typeof VIEW_MODE_CARDS

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
  const [viewMode, setViewMode] = useState<ViewMode>(VIEW_MODE_TABLE)

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
            <IconSearch width={16} height={16} aria-hidden="true" />
            {t('livres.search.button')}
          </button>
          <button
            type="button"
            className="btn-primary"
            onClick={openCreateModal}
          >
            <IconPlus width={16} height={16} aria-hidden="true" />
            {t('livres.add')}
          </button>
          <button
            type="button"
            className="icon-btn"
            aria-label={
              viewMode === VIEW_MODE_TABLE
                ? t('livres.view.showCards')
                : t('livres.view.showTable')
            }
            title={
              viewMode === VIEW_MODE_TABLE
                ? t('livres.view.showCards')
                : t('livres.view.showTable')
            }
            onClick={() =>
              setViewMode(viewMode === VIEW_MODE_TABLE ? VIEW_MODE_CARDS : VIEW_MODE_TABLE)
            }
          >
            {viewMode === VIEW_MODE_TABLE ? (
              <IconGrid width={16} height={16} aria-hidden="true" />
            ) : (
              <IconList width={16} height={16} aria-hidden="true" />
            )}
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
          {viewMode === VIEW_MODE_TABLE ? (
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
                          <IconEdit width={16} height={16} aria-hidden="true" />
                        </button>
                      </td>
                      <td>{livre.titre}</td>
                      <td>{auteur ? `${auteur.prenom} ${auteur.nom}` : ''}</td>
                      <td>{editeur?.nom ?? ''}</td>
                      <td>{formatDate(livre.dateDebutLecture)}</td>
                      <td>{formatDate(livre.dateFinLecture)}</td>
                      <td>
                        <StarRating value={livre.note ?? null} onChange={() => {}} disabled />
                      </td>
                    </tr>
                  )
                })}
              </tbody>
            </table>
          ) : (
            <div className="books-grid">
              {livres.map((livre) => {
                const auteur = livre.auteur_id ? auteurs.get(livre.auteur_id) ?? null : null
                return <BookCard key={livre.id} livre={livre} auteur={auteur} />
              })}
            </div>
          )}
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
