import { useState } from 'react'
import type { Auteur } from '../types/database'
import { deleteAuteur, countLivresByAuteur } from '../services/auteursService'
import { t } from '../services/i18nService'
import { Modal } from './Modal'

interface AuteurDeleteConfirmModalProps {
  isOpen: boolean
  auteur: Auteur | null
  onClose: () => void
  onDeleted: () => void
}

export function AuteurDeleteConfirmModal({
  isOpen,
  auteur,
  onClose,
  onDeleted,
}: AuteurDeleteConfirmModalProps) {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)  

  if (!auteur) return null

  const auteurFullName = `${auteur.nom} ${auteur.prenom}`

  function resetState() {
    setLoading(false)
    setError(null)
  }

  async function handleConfirmDelete() {
    setLoading(true)
    setError(null)

    try {
      if (!auteur) return null

      const count = await countLivresByAuteur(auteur.id)

      if (count > 0) {
        setError(
          t('auteurs.delete.inUse', {
            count: count.toString(),
          }),
        )
        setLoading(false)
        return
      }

      await deleteAuteur(auteur.id)
      resetState()
      onDeleted()
      onClose()
    } catch {
      setError(t('auteurs.delete.error'))
      setLoading(false)
    }
  }

  function handleCloseModal() {
    resetState()
    onClose()
  }

  return (
    <Modal
      isOpen={isOpen}
      onClose={handleCloseModal}
      title={t('auteurs.delete.confirm.title')}
    >
      {error ? (
        <div className="confirm-modal-content">
          <p role="alert" className="error-message">
            {error}
          </p>
          <div className="confirm-modal-actions">
            <button
              type="button"
              className="btn-secondary"
              onClick={handleCloseModal}
              disabled={loading}
            >
              {t('auteurs.delete.cancel')}
            </button>
          </div>
        </div>
      ) : (
        <div className="confirm-modal-content">
          <p>{t('auteurs.delete.confirm.message', { value: auteurFullName })}</p>
          <div className="confirm-modal-actions">
            <button
              type="button"
              className="btn-secondary"
              onClick={handleCloseModal}
              disabled={loading}
            >
              {t('auteurs.delete.cancel')}
            </button>
            <button
              type="button"
              className="btn-danger"
              onClick={handleConfirmDelete}
              disabled={loading}
            >
              {loading && <span className="spinner" />}
              {t('auteurs.delete.confirm.button')}
            </button>
          </div>
        </div>
      )}
    </Modal>
  )
}
