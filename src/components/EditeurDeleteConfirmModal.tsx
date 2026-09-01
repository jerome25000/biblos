import { useState } from 'react'
import type { Editeur } from '../types/database'
import { deleteEditeur, countLivresByEditeur } from '../services/editeursService'
import { t } from '../services/i18nService'
import { Modal } from './Modal'

interface EditeurDeleteConfirmModalProps {
  isOpen: boolean
  editeur: Editeur | null
  onClose: () => void
  onDeleted: () => void
}

export function EditeurDeleteConfirmModal({
  isOpen,
  editeur,
  onClose,
  onDeleted,
}: EditeurDeleteConfirmModalProps) {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  if (!editeur) return null

  const editeurName = editeur.nom

  function resetState() {
    setLoading(false)
    setError(null)
  }

  async function handleConfirmDelete() {
    setLoading(true)
    setError(null)

    try {
      if (!editeur) return null

      const count = await countLivresByEditeur(editeur.id)

      if (count > 0) {
        setError(
          t('editeurs.delete.inUse', {
            count: count.toString(),
          }),
        )
        setLoading(false)
        return
      }

      await deleteEditeur(editeur.id)
      resetState()
      onDeleted()
      onClose()
    } catch {
      setError(t('editeurs.delete.error'))
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
      title={t('editeurs.delete.confirm.title')}
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
              {t('editeurs.delete.cancel')}
            </button>
          </div>
        </div>
      ) : (
        <div className="confirm-modal-content">
          <p>{t('editeurs.delete.confirm.message', { value: editeurName })}</p>
          <div className="confirm-modal-actions">
            <button
              type="button"
              className="btn-secondary"
              onClick={handleCloseModal}
              disabled={loading}
            >
              {t('editeurs.delete.cancel')}
            </button>
            <button
              type="button"
              className="btn-danger"
              onClick={handleConfirmDelete}
              disabled={loading}
            >
              {loading && <span className="spinner" />}
              {t('editeurs.delete.confirm.button')}
            </button>
          </div>
        </div>
      )}
    </Modal>
  )
}
