import { useCallback, useEffect, useState } from 'react'
import { fetchEmprunts, returnLivre } from '../services/empruntsService'
import type { Livre, Auteur } from '../types/database'
import { t } from '../services/i18nService'
import { Pagination } from './Pagination'
import { LivreFormModal } from './LivreFormModal'
import { fetchAuteurs } from '../services/referentielsService'
import { EMPRUNTS_PAGE_SIZE } from '../constants'
import IconUndo from '../assets/icons/undo.svg?react'
import IconEdit from '../assets/icons/edit.svg?react'

export function EmpruntsList() {
  const [page, setPage] = useState(1)
  const [livres, setLivres] = useState<Livre[]>([])
  const [count, setCount] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(false)
  const [auteurs, setAuteurs] = useState<Map<number, Auteur>>(new Map())
  const [returning, setReturning] = useState<Set<number>>(new Set())
  const [editingLivre, setEditingLivre] = useState<Livre | null>(null)
  const [modalOpen, setModalOpen] = useState(false)

  const loadEmprunts = useCallback(() => {
    let cancelled = false
    setLoading(true)
    setError(false)

    fetchEmprunts(page)
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

  useEffect(() => loadEmprunts(), [loadEmprunts])

  useEffect(() => {
    fetchAuteurs()
      .then((auteursData) => {
        setAuteurs(new Map(auteursData.map((a) => [a.id, a])))
      })
      .catch(() => {
        setAuteurs(new Map())
      })
  }, [])

  function openEditModal(livre: Livre) {
    setEditingLivre(livre)
    setModalOpen(true)
  }

  function closeModal() {
    setModalOpen(false)
  }

  function handleSave() {
    loadEmprunts()
  }

  async function handleReturn(libreId: number) {
    setReturning((prev) => new Set(prev).add(libreId))
    try {
      await returnLivre(libreId)
      setLivres((prev) => prev.filter((l) => l.id !== libreId))
      setCount((prev) => Math.max(0, prev - 1))
    } catch {
      setError(true)
    } finally {
      setReturning((prev) => {
        const next = new Set(prev)
        next.delete(libreId)
        return next
      })
    }
  }

  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <div className="books-workspace-title">
          <div className="books-workspace-title-row">
            <h1>{t('emprunts.title')}</h1>
            <span className="count-chip">{t('emprunts.count', { count })}</span>
          </div>
        </div>
      </div>
      {loading && (
        <div className="books-empty">
          <span className="spinner-large" />
          <p>{t('emprunts.loading')}</p>
        </div>
      )}
      {error && (
        <p role="alert" className="error-message">
          {t('emprunts.error')}
        </p>
      )}
      {!loading && !error && livres.length === 0 && (
        <p className="books-empty">{t('emprunts.empty')}</p>
      )}
      {!loading && !error && livres.length > 0 && (
        <>
          <div className="table-scroll">
            <table>
              <thead>
                <tr>
                  <th></th>
                  <th>{t('emprunts.column.titre')}</th>
                  <th>{t('emprunts.column.auteur')}</th>
                  <th>{t('emprunts.column.emprunteur')}</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                {livres.map((livre) => {
                  const auteur = livre.auteur_id ? auteurs.get(livre.auteur_id) : null
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
                      <td>{livre.emprunteur}</td>
                      <td>
                        <button
                          type="button"
                          className="icon-btn"
                          aria-label={t('emprunts.return')}
                          title={t('emprunts.return.tooltip')}
                          onClick={() => handleReturn(livre.id)}
                          disabled={returning.has(livre.id)}
                        >
                          <IconUndo width={16} height={16} aria-hidden="true" />
                        </button>
                      </td>
                    </tr>
                  )
                })}
              </tbody>
            </table>
          </div>
          <Pagination
            page={page}
            count={count}
            pageSize={EMPRUNTS_PAGE_SIZE}
            onPageChange={setPage}
          />
        </>
      )}
      <LivreFormModal
        isOpen={modalOpen}
        onClose={closeModal}
        onSaved={handleSave}
        livre={editingLivre}
      />
    </section>
  )
}
