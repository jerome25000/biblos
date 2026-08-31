import { useEffect, useState } from 'react'
import type { FormEvent } from 'react'
import { Modal } from './Modal'
import { StarRating } from './StarRating'
import { LivreImageUploader } from './LivreImageUploader'
import { t } from '../services/i18nService'
import {
  emptyToNull,
  frDateToIso,
  isValidFrDate,
  isoToFrDate,
  todayFrDate,
} from '../services/utilities'
import {
  createLivre,
  updateLivre,
  type LivreFormPayload,
} from '../services/livresService'
import {
  fetchAuteurs,
  fetchEditeurs,
  fetchGenres,
  fetchTypesLivre,
} from '../services/referentielsService'
import type { Auteur, Editeur, Genre, Livre, TypeLivre } from '../types/database'

interface LivreFormModalProps {
  isOpen: boolean
  onClose: () => void
  onSaved: () => void
  livre?: Livre | null
}

interface FormState {
  numEdition: string
  numEditeurId: string
  anneePremiereEdition: string
  titre: string
  titreVo: string
  serie: string
  numSerie: string
  description: string
  commentaires: string
  genreId: string
  typeLivreId: string
  dateSaisie: string
  collection: boolean
  dateDebutLecture: string
  dateFinLecture: string
  note: number | null
  auteurId: string
  image: string | null
}

function emptyFormState(): FormState {
  return {
    numEdition: '',
    numEditeurId: '',
    anneePremiereEdition: '',
    titre: '',
    titreVo: '',
    serie: '',
    numSerie: '',
    description: '',
    commentaires: '',
    genreId: '',
    typeLivreId: '',
    dateSaisie: todayFrDate(),
    collection: false,
    dateDebutLecture: '',
    dateFinLecture: '',
    note: null,
    auteurId: '',
    image: null,
  }
}

function formStateFromLivre(livre: Livre): FormState {
  return {
    numEdition: livre.numEdition?.toString() ?? '',
    numEditeurId: livre.numEditeur_id.toString(),
    anneePremiereEdition: livre.anneePremiereEdition.toString(),
    titre: livre.titre,
    titreVo: livre.titreVo ?? '',
    serie: livre.serie ?? '',
    numSerie: livre.num_serie?.toString() ?? '',
    description: livre.description ?? '',
    commentaires: livre.commentaires ?? '',
    genreId: livre.genre_id.toString(),
    typeLivreId: livre.typeLivre_id.toString(),
    dateSaisie: isoToFrDate(livre.dateSaisie),
    collection: livre.collection,
    dateDebutLecture: isoToFrDate(livre.dateDebutLecture),
    dateFinLecture: isoToFrDate(livre.dateFinLecture),
    note: livre.note,
    auteurId: livre.auteur_id?.toString() ?? '',
    image: livre.image ?? null,
  }
}

function buildPayload(state: FormState): LivreFormPayload {
  return {
    numEdition: state.numEdition ? Number(state.numEdition) : null,
    numEditeur_id: Number(state.numEditeurId),
    anneePremiereEdition: Number(state.anneePremiereEdition),
    titre: state.titre.trim(),
    titreVo: emptyToNull(state.titreVo),
    serie: emptyToNull(state.serie),
    num_serie: state.numSerie ? Number(state.numSerie) : null,
    description: emptyToNull(state.description),
    commentaires: emptyToNull(state.commentaires),
    genre_id: Number(state.genreId),
    typeLivre_id: Number(state.typeLivreId),
    dateSaisie: frDateToIso(state.dateSaisie),
    collection: state.collection,
    dateDebutLecture: frDateToIso(state.dateDebutLecture),
    dateFinLecture: frDateToIso(state.dateFinLecture),
    note: state.note,
    auteur_id: state.auteurId ? Number(state.auteurId) : null,
    image: state.image,
  }
}

function isFormValid(state: FormState): boolean {
  if (!state.titre.trim()) return false
  if (!state.numEditeurId || !state.anneePremiereEdition) return false
  if (!state.genreId || !state.typeLivreId) return false
  if (!isValidFrDate(state.dateSaisie)) return false
  if (!isValidFrDate(state.dateDebutLecture)) return false
  if (!isValidFrDate(state.dateFinLecture)) return false
  return true
}

export function LivreFormModal({
  isOpen,
  onClose,
  onSaved,
  livre,
}: LivreFormModalProps) {
  const [form, setForm] = useState<FormState>(emptyFormState())
  const [auteurs, setAuteurs] = useState<Auteur[]>([])
  const [editeurs, setEditeurs] = useState<Editeur[]>([])
  const [genres, setGenres] = useState<Genre[]>([])
  const [typesLivre, setTypesLivre] = useState<TypeLivre[]>([])
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState(false)

  useEffect(() => {
    if (!isOpen) return
    setForm(livre ? formStateFromLivre(livre) : emptyFormState())
    setError(false)
  }, [isOpen, livre])

  useEffect(() => {
    if (!isOpen) return
    let cancelled = false

    Promise.all([
      fetchAuteurs(),
      fetchEditeurs(),
      fetchGenres(),
      fetchTypesLivre(),
    ])
      .then(([auteursData, editeursData, genresData, typesData]) => {
        if (cancelled) return
        setAuteurs(auteursData)
        setEditeurs(editeursData)
        setGenres(genresData)
        setTypesLivre(typesData)
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
      if (livre) {
        await updateLivre(livre.id, payload)
      } else {
        await createLivre(payload)
      }
      onSaved()
      onClose()
    } catch {
      setError(true)
    } finally {
      setSaving(false)
    }
  }

  const title = livre ? t('livreForm.title.edit') : t('livreForm.title.create')

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={title}>
      <form className="livre-form" onSubmit={handleSubmit}>
        {error && (
          <p role="alert" className="error-message">
            {t('livreForm.error')}
          </p>
        )}
        <div className="form-group form-group-wide">
          <label htmlFor="image">{t('livreForm.field.image')}</label>
          <LivreImageUploader
            value={form.image}
            onChange={(path) => updateField('image', path)}
            disabled={saving}
          />
        </div>
        <div className="form-grid">
          <div className="form-group">
            <label htmlFor="titre">{t('livreForm.field.titre')}</label>
            <input
              id="titre"
              className="form-input"
              value={form.titre}
              onChange={(e) => updateField('titre', e.target.value)}
              required
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="titreVo">{t('livreForm.field.titreVo')}</label>
            <input
              id="titreVo"
              className="form-input"
              value={form.titreVo}
              onChange={(e) => updateField('titreVo', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="auteur">{t('livreForm.field.auteur')}</label>
            <select
              id="auteur"
              className="form-input"
              value={form.auteurId}
              onChange={(e) => updateField('auteurId', e.target.value)}
              disabled={saving}
            >
              <option value="">{t('livreForm.select.empty')}</option>
              {auteurs.map((auteur) => (
                <option key={auteur.id} value={auteur.id}>
                  {auteur.nom} {auteur.prenom}
                </option>
              ))}
            </select>
          </div>
          <div className="form-group">
            <label htmlFor="editeur">{t('livreForm.field.editeur')}</label>
            <select
              id="editeur"
              className="form-input"
              value={form.numEditeurId}
              onChange={(e) => updateField('numEditeurId', e.target.value)}
              required
              disabled={saving}
            >
              <option value="">{t('livreForm.select.empty')}</option>
              {editeurs.map((editeur) => (
                <option key={editeur.id} value={editeur.id}>
                  {editeur.nom}
                </option>
              ))}
            </select>
          </div>
          <div className="form-group">
            <label htmlFor="genre">{t('livreForm.field.genre')}</label>
            <select
              id="genre"
              className="form-input"
              value={form.genreId}
              onChange={(e) => updateField('genreId', e.target.value)}
              required
              disabled={saving}
            >
              <option value="">{t('livreForm.select.empty')}</option>
              {genres.map((genre) => (
                <option key={genre.id} value={genre.id}>
                  {genre.genre}
                </option>
              ))}
            </select>
          </div>
          <div className="form-group">
            <label htmlFor="typeLivre">{t('livreForm.field.typeLivre')}</label>
            <select
              id="typeLivre"
              className="form-input"
              value={form.typeLivreId}
              onChange={(e) => updateField('typeLivreId', e.target.value)}
              required
              disabled={saving}
            >
              <option value="">{t('livreForm.select.empty')}</option>
              {typesLivre.map((typeLivre) => (
                <option key={typeLivre.id} value={typeLivre.id}>
                  {typeLivre.type}
                </option>
              ))}
            </select>
          </div>
          <div className="form-group">
            <label htmlFor="numEdition">{t('livreForm.field.numEdition')}</label>
            <input
              id="numEdition"
              type="number"
              className="form-input"
              value={form.numEdition}
              onChange={(e) => updateField('numEdition', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="anneePremiereEdition">
              {t('livreForm.field.anneePremiereEdition')}
            </label>
            <input
              id="anneePremiereEdition"
              type="number"
              className="form-input"
              value={form.anneePremiereEdition}
              onChange={(e) =>
                updateField('anneePremiereEdition', e.target.value)
              }
              required
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="serie">{t('livreForm.field.serie')}</label>
            <input
              id="serie"
              className="form-input"
              value={form.serie}
              onChange={(e) => updateField('serie', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="numSerie">{t('livreForm.field.numSerie')}</label>
            <input
              id="numSerie"
              type="number"
              className="form-input"
              value={form.numSerie}
              onChange={(e) => updateField('numSerie', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="dateSaisie">{t('livreForm.field.dateSaisie')}</label>
            <input
              id="dateSaisie"
              className="form-input"
              placeholder={t('livreForm.datePlaceholder')}
              value={form.dateSaisie}
              onChange={(e) => updateField('dateSaisie', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="dateDebutLecture">
              {t('livreForm.field.dateDebutLecture')}
            </label>
            <input
              id="dateDebutLecture"
              className="form-input"
              placeholder={t('livreForm.datePlaceholder')}
              value={form.dateDebutLecture}
              onChange={(e) => updateField('dateDebutLecture', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group">
            <label htmlFor="dateFinLecture">
              {t('livreForm.field.dateFinLecture')}
            </label>
            <input
              id="dateFinLecture"
              className="form-input"
              placeholder={t('livreForm.datePlaceholder')}
              value={form.dateFinLecture}
              onChange={(e) => updateField('dateFinLecture', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group form-group-checkbox">
            <label htmlFor="collection">
              <input
                id="collection"
                type="checkbox"
                checked={form.collection}
                onChange={(e) => updateField('collection', e.target.checked)}
                disabled={saving}
              />
              {t('livreForm.field.collection')}
            </label>
          </div>
          <div className="form-group">
            <label>{t('livreForm.field.note')}</label>
            <StarRating
              value={form.note}
              onChange={(value) => updateField('note', value)}
              disabled={saving}
            />
          </div>
          <div className="form-group form-group-wide">
            <label htmlFor="description">
              {t('livreForm.field.description')}
            </label>
            <textarea
              id="description"
              className="form-input form-textarea"
              value={form.description}
              onChange={(e) => updateField('description', e.target.value)}
              disabled={saving}
            />
          </div>
          <div className="form-group form-group-wide">
            <label htmlFor="commentaires">
              {t('livreForm.field.commentaires')}
            </label>
            <textarea
              id="commentaires"
              className="form-input form-textarea"
              value={form.commentaires}
              onChange={(e) => updateField('commentaires', e.target.value)}
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
            {t('livreForm.cancel')}
          </button>
          <button type="submit" className="btn-primary" disabled={saving}>
            {saving ? <span className="spinner" /> : t('livreForm.save')}
          </button>
        </div>
      </form>
    </Modal>
  )
}
