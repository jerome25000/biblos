import { useEffect, useState } from 'react'
import type { FormEvent } from 'react'
import { Modal } from './Modal'
import { t } from '../services/i18nService'
import {
  createEditeur,
  updateEditeur,
  type EditeurFormPayload,
} from '../services/editeursService'
import type { Editeur } from '../types/database'

interface EditeurFormModalProps {
  isOpen: boolean
  onClose: () => void
  onSaved: () => void
  editeur?: Editeur | null
}

interface FormState {
  nom: string
}

function emptyFormState(): FormState {
  return { nom: '' }
}

function formStateFromEditeur(editeur: Editeur): FormState {
  return { nom: editeur.nom }
}

function buildPayload(state: FormState, editeur?: Editeur | null): EditeurFormPayload {
  return {
    nom: state.nom.trim(),
    adresse: editeur?.adresse ?? '',
  }
}

function isFormValid(state: FormState): boolean {
  return !!state.nom.trim()
}

export function EditeurFormModal({
  isOpen,
  onClose,
  onSaved,
  editeur,
}: EditeurFormModalProps) {
  const [form, setForm] = useState<FormState>(emptyFormState())
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState(false)

  useEffect(() => {
    if (!isOpen) return
    setForm(editeur ? formStateFromEditeur(editeur) : emptyFormState())
    setError(false)
  }, [isOpen, editeur])

  function updateField<K extends keyof FormState>(key: K, value: FormState[K]) {
    setForm((prev) => ({ ...prev, [key]: value }))
  }

  async function handleSubmit(event: FormEvent) {
    event.preventDefault()
    if (!isFormValid(form)) {
      setError(true)
      return
    }

    setSaving(true)
    setError(false)
    try {
      const payload = buildPayload(form, editeur)
      if (editeur) {
        await updateEditeur(editeur.id, payload)
      } else {
        await createEditeur(payload)
      }
      onSaved()
      onClose()
    } catch {
      setError(true)
    } finally {
      setSaving(false)
    }
  }

  const title = editeur ? t('editeurForm.title.edit') : t('editeurForm.title.create')

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={title}>
      <form className="livre-form" onSubmit={handleSubmit}>
        {error && (
          <p role="alert" className="error-message">
            {t('editeurForm.error')}
          </p>
        )}
        <div className="form-grid">
          <div className="form-group">
            <label htmlFor="nom">{t('editeurForm.field.nom')}</label>
            <input
              id="nom"
              className="form-input"
              value={form.nom}
              onChange={(e) => updateField('nom', e.target.value)}
              required
              disabled={saving}
            />
          </div>
        </div>
        <div className="modal-actions">
          <button
            type="button"
            className="btn-secondary"
            onClick={onClose}
            disabled={saving}
          >
            {t('editeurForm.cancel')}
          </button>
          <button type="submit" className="btn-primary" disabled={saving}>
            {saving ? <span className="spinner" /> : t('editeurForm.save')}
          </button>
        </div>
      </form>
    </Modal>
  )
}
