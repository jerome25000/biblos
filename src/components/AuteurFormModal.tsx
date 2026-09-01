import { useEffect, useState } from 'react'
import type { FormEvent } from 'react'
import { Modal } from './Modal'
import { t } from '../services/i18nService'
import {
  createAuteur,
  updateAuteur,
  type AuteurFormPayload,
} from '../services/auteursService'
import { fetchPays } from '../services/referentielsService'
import type { Auteur, Pays } from '../types/database'

interface AuteurFormModalProps {
  isOpen: boolean
  onClose: () => void
  onSaved: () => void
  auteur?: Auteur | null
}

interface FormState {
  nom: string
  prenom: string
  anneeNaissance: string
  nationaliteId: string
}

const YEAR_PATTERN = /^\d{4}$/

function emptyFormState(): FormState {
  return {
    nom: '',
    prenom: '',
    anneeNaissance: '',
    nationaliteId: '',
  }
}

function formStateFromAuteur(auteur: Auteur): FormState {
  return {
    nom: auteur.nom,
    prenom: auteur.prenom,
    anneeNaissance: auteur.anneeNaissance?.toString() ?? '',
    nationaliteId: auteur.nationalite_id.toString(),
  }
}

function buildPayload(state: FormState): AuteurFormPayload {
  return {
    nom: state.nom.trim(),
    prenom: state.prenom.trim(),
    anneeNaissance: state.anneeNaissance ? Number(state.anneeNaissance) : null,
    nationalite_id: Number(state.nationaliteId),
  }
}

function isValidYear(value: string): boolean {
  return !value.trim() || YEAR_PATTERN.test(value.trim())
}

function isFormValid(state: FormState): boolean {
  if (!state.nom.trim() || !state.prenom.trim()) return false
  if (!state.nationaliteId) return false
  if (!isValidYear(state.anneeNaissance)) return false
  return true
}

export function AuteurFormModal({
  isOpen,
  onClose,
  onSaved,
  auteur,
}: AuteurFormModalProps) {
  const [form, setForm] = useState<FormState>(emptyFormState())
  const [pays, setPays] = useState<Pays[]>([])
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState(false)

  useEffect(() => {
    if (!isOpen) return
    setForm(auteur ? formStateFromAuteur(auteur) : emptyFormState())
    setError(false)
  }, [isOpen, auteur])

  useEffect(() => {
    if (!isOpen) return
    let cancelled = false

    fetchPays()
      .then((paysData) => {
        if (cancelled) return
        setPays(paysData)
      })
      .catch(() => {
        if (!cancelled) setError(true)
      })

    return () => {
      cancelled = true
    }
  }, [isOpen])

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
      const payload = buildPayload(form)
      if (auteur) {
        await updateAuteur(auteur.id, payload)
      } else {
        await createAuteur(payload)
      }
      onSaved()
      onClose()
    } catch {
      setError(true)
    } finally {
      setSaving(false)
    }
  }

  const title = auteur ? t('auteurForm.title.edit') : t('auteurForm.title.create')

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={title}>
      <form className="livre-form" onSubmit={handleSubmit}>
        {error && (
          <p role="alert" className="error-message">
            {t('auteurForm.error')}
          </p>
        )}
        <div className="form-grid">
          <div className="form-group">
            <label htmlFor="nom">{t('auteurForm.field.nom')}</label>
            <input
              id="nom"
              className="form-input"
              value={form.nom}
              onChange={(e) => updateField('nom', e.target.value)}
              required
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="prenom">{t('auteurForm.field.prenom')}</label>
            <input
              id="prenom"
              className="form-input"
              value={form.prenom}
              onChange={(e) => updateField('prenom', e.target.value)}
              required
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="anneeNaissance">
              {t('auteurForm.field.anneeNaissance')}
            </label>
            <input
              id="anneeNaissance"
              type="number"
              className="form-input"
              value={form.anneeNaissance}
              onChange={(e) => updateField('anneeNaissance', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="nationalite">
              {t('auteurForm.field.nationalite')}
            </label>
            <select
              id="nationalite"
              className="form-input"
              value={form.nationaliteId}
              onChange={(e) => updateField('nationaliteId', e.target.value)}
              required
              disabled={saving}
            >
              <option value="">{t('auteurForm.select.empty')}</option>
              {pays.map((p) => (
                <option key={p.id} value={p.id}>
                  {p.nom}
                </option>
              ))}
            </select>
          </div>
        </div>
        <div className="modal-actions">
          <button
            type="button"
            className="btn-secondary"
            onClick={onClose}
            disabled={saving}
          >
            {t('auteurForm.cancel')}
          </button>
          <button type="submit" className="btn-primary" disabled={saving}>
            {saving ? <span className="spinner" /> : t('auteurForm.save')}
          </button>
        </div>
      </form>
    </Modal>
  )
}
