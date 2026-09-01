import { useCallback, useEffect, useState } from 'react'
import { fetchEditeursPage, EDITEURS_PAGE_SIZE } from '../services/editeursService'
import type { EditeursFilter } from '../services/editeursService'
import type { Editeur } from '../types/database'
import { t } from '../services/i18nService'
import { Pagination } from './Pagination'
import { EditeurFormModal } from './EditeurFormModal'
import { EditeurSearchModal } from './EditeurSearchModal'
import { EditeurDeleteConfirmModal } from './EditeurDeleteConfirmModal'
import { fetchEditeurById } from '../services/referentielsService'
import IconSearch from '../assets/icons/search.svg?react'
import IconPlus from '../assets/icons/plus.svg?react'
import IconEdit from '../assets/icons/edit.svg?react'
import IconTrash from '../assets/icons/trash.svg?react'

export function EditeursList() {
  const [page, setPage] = useState(1)
  const [editeurs, setEditeurs] = useState<Editeur[]>([])
  const [count, setCount] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(false)
  const [editingEditeur, setEditingEditeur] = useState<Editeur | null>(null)
  const [modalOpen, setModalOpen] = useState(false)
  const [searchModalOpen, setSearchModalOpen] = useState(false)
  const [deletingEditeur, setDeletingEditeur] = useState<Editeur | null>(null)
  const [deleteModalOpen, setDeleteModalOpen] = useState(false)
  const [activeFilter, setActiveFilter] = useState<EditeursFilter | null>(null)
  const [filterEditeurData, setFilterEditeurData] = useState<Editeur | null>(null)

  const loadEditeurs = useCallback(() => {
    let cancelled = false
    setLoading(true)
    setError(false)

    fetchEditeursPage(page, activeFilter ?? undefined)
      .then((result) => {
        if (cancelled) return
        setEditeurs(result.editeurs)
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

  useEffect(() => loadEditeurs(), [loadEditeurs])

  useEffect(() => {
    if (!activeFilter) {
      setFilterEditeurData(null)
      return
    }

    fetchEditeurById(activeFilter.editeurId)
      .then(setFilterEditeurData)
      .catch(() => setFilterEditeurData(null))
  }, [activeFilter])

  function openCreateModal() {
    setEditingEditeur(null)
    setModalOpen(true)
  }

  function openEditModal(editeur: Editeur) {
    setEditingEditeur(editeur)
    setModalOpen(true)
  }

  function closeModal() {
    setModalOpen(false)
  }

  function openDeleteModal(editeur: Editeur) {
    setDeletingEditeur(editeur)
    setDeleteModalOpen(true)
  }

  function closeDeleteModal() {
    setDeleteModalOpen(false)
  }

  function handleSearchApply(filter: EditeursFilter) {
    setActiveFilter(filter)
    setPage(1)
  }

  function clearFilter() {
    setActiveFilter(null)
    setPage(1)
  }

  function getFilterLabel(): string {
    return filterEditeurData?.nom ?? ''
  }

  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <div className="books-workspace-title">
          <h1>{t('editeurs.title')}</h1>
          {activeFilter && (
            <div className="active-filter">
              <span>{t('editeurs.search.activeFilter', { value: getFilterLabel() })}</span>
              <button
                type="button"
                className="btn-secondary btn-small"
                onClick={clearFilter}
              >
                {t('editeurs.search.clearFilter')}
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
            {t('editeurs.search.button')}
          </button>
          <button type="button" className="btn-primary" onClick={openCreateModal}>
            <IconPlus width={16} height={16} aria-hidden="true" />
            {t('editeurs.add')}
          </button>
        </div>
      </div>
      {loading && (
        <div className="books-empty">
          <span className="spinner-large" />
          <p>{t('editeurs.loading')}</p>
        </div>
      )}
      {error && (
        <p role="alert" className="error-message">
          {t('editeurs.error')}
        </p>
      )}
      {!loading && !error && editeurs.length === 0 && (
        <p className="books-empty">{t('editeurs.empty')}</p>
      )}
      {!loading && !error && editeurs.length > 0 && (
        <>
          <table>
            <thead>
              <tr>
                <th aria-hidden="true"></th>
                <th>{t('editeurs.column.nom')}</th>
              </tr>
            </thead>
            <tbody>
              {editeurs.map((editeur) => (
                <tr key={editeur.id}>
                  <td>
                    <button
                      type="button"
                      className="icon-btn"
                      aria-label={t('editeurs.edit')}
                      onClick={() => openEditModal(editeur)}
                    >
                      <IconEdit width={16} height={16} aria-hidden="true" />
                    </button>
                    <button
                      type="button"
                      className="icon-btn"
                      aria-label={t('editeurs.delete')}
                      onClick={() => openDeleteModal(editeur)}
                    >
                      <IconTrash width={16} height={16} aria-hidden="true" />
                    </button>
                  </td>
                  <td>{editeur.nom}</td>
                </tr>
              ))}
            </tbody>
          </table>
          <Pagination
            page={page}
            count={count}
            pageSize={EDITEURS_PAGE_SIZE}
            onPageChange={setPage}
          />
        </>
      )}
      <EditeurFormModal
        isOpen={modalOpen}
        onClose={closeModal}
        onSaved={loadEditeurs}
        editeur={editingEditeur}
      />
      <EditeurSearchModal
        isOpen={searchModalOpen}
        onClose={() => setSearchModalOpen(false)}
        onApply={handleSearchApply}
      />
      <EditeurDeleteConfirmModal
        isOpen={deleteModalOpen}
        editeur={deletingEditeur}
        onClose={closeDeleteModal}
        onDeleted={loadEditeurs}
      />
    </section>
  )
}
