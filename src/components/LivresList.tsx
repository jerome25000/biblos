import { useCallback, useEffect, useState } from 'react'
import { fetchLivres, PAGE_SIZE } from '../services/livresService'
import type { Livre } from '../types/database'
import { t } from '../services/i18nService'
import { formatDate } from '../services/utilities'
import { Pagination } from './Pagination'
import { LivreFormModal } from './LivreFormModal'

export function LivresList() {
  const [page, setPage] = useState(1)
  const [livres, setLivres] = useState<Livre[]>([])
  const [count, setCount] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(false)
  const [editingLivre, setEditingLivre] = useState<Livre | null>(null)
  const [modalOpen, setModalOpen] = useState(false)

  const loadLivres = useCallback(() => {
    let cancelled = false
    setLoading(true)
    setError(false)

    fetchLivres(page)
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
  }, [page])

  useEffect(() => loadLivres(), [loadLivres])

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

  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <h1>{t('livres.title')}</h1>
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
                <th>{t('livres.column.titreVo')}</th>
                <th>{t('livres.column.serie')}</th>
                <th>{t('livres.column.dateDebutLecture')}</th>
                <th>{t('livres.column.dateFinLecture')}</th>
                <th>{t('livres.column.note')}</th>
              </tr>
            </thead>
            <tbody>
              {livres.map((livre) => (
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
                  <td>{livre.titreVo}</td>
                  <td>{livre.serie}</td>
                  <td>{formatDate(livre.dateDebutLecture)}</td>
                  <td>{formatDate(livre.dateFinLecture)}</td>
                  <td>{livre.note ?? ''}</td>
                </tr>
              ))}
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
    </section>
  )
}
