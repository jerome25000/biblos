import { useCallback, useEffect, useState } from 'react'
import { fetchAuteursPage, AUTEURS_PAGE_SIZE } from '../services/auteursService'
import type { AuteursFilter } from '../services/auteursService'
import type { Auteur, Pays } from '../types/database'
import { t } from '../services/i18nService'
import { Pagination } from './Pagination'
import { AuteurFormModal } from './AuteurFormModal'
import { AuteurSearchModal } from './AuteurSearchModal'
import { AuteurDeleteConfirmModal } from './AuteurDeleteConfirmModal'
import { fetchAuteurById, fetchPays } from '../services/referentielsService'
import IconSearch from '../assets/icons/search.svg?react'
import IconPlus from '../assets/icons/plus.svg?react'
import IconEdit from '../assets/icons/edit.svg?react'
import IconTrash from '../assets/icons/trash.svg?react'

export function AuteursList() {
  const [page, setPage] = useState(1)
  const [auteurs, setAuteurs] = useState<Auteur[]>([])
  const [count, setCount] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(false)
  const [editingAuteur, setEditingAuteur] = useState<Auteur | null>(null)
  const [modalOpen, setModalOpen] = useState(false)
  const [searchModalOpen, setSearchModalOpen] = useState(false)
  const [deletingAuteur, setDeletingAuteur] = useState<Auteur | null>(null)
  const [deleteModalOpen, setDeleteModalOpen] = useState(false)
  const [activeFilter, setActiveFilter] = useState<AuteursFilter | null>(null)
  const [filterAuteurData, setFilterAuteurData] = useState<Auteur | null>(null)
  const [pays, setPays] = useState<Map<number, Pays>>(new Map())

  const loadAuteurs = useCallback(() => {
    let cancelled = false
    setLoading(true)
    setError(false)

    fetchAuteursPage(page, activeFilter ?? undefined)
      .then((result) => {
        if (cancelled) return
        setAuteurs(result.auteurs)
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

  useEffect(() => loadAuteurs(), [loadAuteurs])

  useEffect(() => {
    fetchPays()
      .then((paysData) => {
        setPays(new Map(paysData.map((p) => [p.id, p])))
      })
      .catch(() => {
        setPays(new Map())
      })
  }, [])

  useEffect(() => {
    if (!activeFilter) {
      setFilterAuteurData(null)
      return
    }

    fetchAuteurById(activeFilter.auteurId)
      .then(setFilterAuteurData)
      .catch(() => setFilterAuteurData(null))
  }, [activeFilter])

  function openCreateModal() {
    setEditingAuteur(null)
    setModalOpen(true)
  }

  function openEditModal(auteur: Auteur) {
    setEditingAuteur(auteur)
    setModalOpen(true)
  }

  function closeModal() {
    setModalOpen(false)
  }

  function openDeleteModal(auteur: Auteur) {
    setDeletingAuteur(auteur)
    setDeleteModalOpen(true)
  }

  function closeDeleteModal() {
    setDeleteModalOpen(false)
  }

  function handleSearchApply(filter: AuteursFilter) {
    setActiveFilter(filter)
    setPage(1)
  }

  function clearFilter() {
    setActiveFilter(null)
    setPage(1)
  }

  function getFilterLabel(): string {
    if (!filterAuteurData) return ''
    return `${filterAuteurData.nom} ${filterAuteurData.prenom}`
  }

  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <div className="books-workspace-title">
          <h1>{t('auteurs.title')}</h1>
          {activeFilter && (
            <div className="active-filter">
              <span>{t('auteurs.search.activeFilter', { value: getFilterLabel() })}</span>
              <button
                type="button"
                className="btn-secondary btn-small"
                onClick={clearFilter}
              >
                {t('auteurs.search.clearFilter')}
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
            {t('auteurs.search.button')}
          </button>
          <button type="button" className="btn-primary" onClick={openCreateModal}>
            <IconPlus width={16} height={16} aria-hidden="true" />
            {t('auteurs.add')}
          </button>
        </div>
      </div>
      {loading && (
        <div className="books-empty">
          <span className="spinner-large" />
          <p>{t('auteurs.loading')}</p>
        </div>
      )}
      {error && (
        <p role="alert" className="error-message">
          {t('auteurs.error')}
        </p>
      )}
      {!loading && !error && auteurs.length === 0 && (
        <p className="books-empty">{t('auteurs.empty')}</p>
      )}
      {!loading && !error && auteurs.length > 0 && (
        <>
          <table>
            <thead>
              <tr>
                <th aria-hidden="true"></th>
                <th>{t('auteurs.column.nom')}</th>
                <th>{t('auteurs.column.prenom')}</th>
                <th>{t('auteurs.column.anneeNaissance')}</th>
                <th>{t('auteurs.column.nationalite')}</th>
              </tr>
            </thead>
            <tbody>
              {auteurs.map((auteur) => (
                <tr key={auteur.id}>
                  <td>
                    <button
                      type="button"
                      className="icon-btn"
                      aria-label={t('auteurs.edit')}
                      onClick={() => openEditModal(auteur)}
                    >
                      <IconEdit width={16} height={16} aria-hidden="true" />
                    </button>
                    <button
                      type="button"
                      className="icon-btn"
                      aria-label={t('auteurs.delete')}
                      onClick={() => openDeleteModal(auteur)}
                    >
                      <IconTrash width={16} height={16} aria-hidden="true" />
                    </button>
                  </td>
                  <td>{auteur.nom}</td>
                  <td>{auteur.prenom}</td>
                  <td>{auteur.anneeNaissance ?? ''}</td>
                  <td>{pays.get(auteur.nationalite_id)?.nom ?? ''}</td>
                </tr>
              ))}
            </tbody>
          </table>
          <Pagination
            page={page}
            count={count}
            pageSize={AUTEURS_PAGE_SIZE}
            onPageChange={setPage}
          />
        </>
      )}
      <AuteurFormModal
        isOpen={modalOpen}
        onClose={closeModal}
        onSaved={loadAuteurs}
        auteur={editingAuteur}
      />
      <AuteurSearchModal
        isOpen={searchModalOpen}
        onClose={() => setSearchModalOpen(false)}
        onApply={handleSearchApply}
      />
      <AuteurDeleteConfirmModal
        isOpen={deleteModalOpen}
        auteur={deletingAuteur}
        onClose={closeDeleteModal}
        onDeleted={loadAuteurs}
      />
    </section>
  )
}
