import { useState } from 'react'
import { t } from '../services/i18nService'
import { Modal } from './Modal'
import type { EntityI18nPrefix } from './EntitySearchModal'

export interface EntityDeleteDescriptor<T extends { id: number }> {
  i18nPrefix: EntityI18nPrefix
  getLabel: (item: T) => string
  remove: (id: number) => Promise<void>
  countLivres: (id: number) => Promise<number>
}

interface EntityDeleteConfirmModalProps<T extends { id: number }> {
  isOpen: boolean
  entity: T | null
  onClose: () => void
  onDeleted: () => void
  descriptor: EntityDeleteDescriptor<T>
}

export function EntityDeleteConfirmModal<T extends { id: number }>({
  isOpen,
  entity,
  onClose,
  onDeleted,
  descriptor,
}: EntityDeleteConfirmModalProps<T>) {
  const { i18nPrefix, getLabel, remove, countLivres } = descriptor
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)  

  if (!entity) return null

  const entityLabel = getLabel(entity)

  function resetState() {
    setLoading(false)
    setError(null)
  }

  async function handleConfirmDelete() {
    setLoading(true)
    setError(null)

    try {
      const count = await countLivres(entity!.id)

      if (count > 0) {
        setError(
          t(`${i18nPrefix}.delete.inUse`, {
            count: count.toString(),
          }),
        )
        setLoading(false)
        return
      }

      await remove(entity!.id)
      resetState()
      onDeleted()
      onClose()
    } catch {
      setError(t(`${i18nPrefix}.delete.error`))
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
      title={t(`${i18nPrefix}.delete.confirm.title`)}
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
              {t(`${i18nPrefix}.delete.cancel`)}
            </button>
          </div>
        </div>
      ) : (
        <div className="confirm-modal-content">
          <p>{t(`${i18nPrefix}.delete.confirm.message`, { value: entityLabel })}</p>
          <div className="confirm-modal-actions">
            <button
              type="button"
              className="btn-secondary"
              onClick={handleCloseModal}
              disabled={loading}
            >
              {t(`${i18nPrefix}.delete.cancel`)}
            </button>
            <button
              type="button"
              className="btn-danger"
              onClick={handleConfirmDelete}
              disabled={loading}
            >
              {loading && <span className="spinner" />}
              {t(`${i18nPrefix}.delete.confirm.button`)}
            </button>
          </div>
        </div>
      )}
    </Modal>
  )
}
