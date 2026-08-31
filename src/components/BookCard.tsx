import type { Livre, Auteur } from '../types/database'
import { formatDate } from '../services/utilities'
import { getPublicImageUrl } from '../services/storageService'
import { t } from '../services/i18nService'
import { Tooltip } from './Tooltip'
import IconImageEmpty from '../assets/icons/image-empty.svg?react'

interface BookCardProps {
  livre: Livre
  auteur: Auteur | null
  onEdit?: (livre: Livre) => void
}

export function BookCard({ livre, auteur, onEdit }: BookCardProps) {
  const imageUrl = getPublicImageUrl(livre.image)

  return (
    <div className="book-card">
      <button
        type="button"
        className="book-card-image-wrapper"
        onClick={() => onEdit?.(livre)}
        title={onEdit ? t('livres.card.editClick') : undefined}
      >
        {imageUrl ? (
          <img
            src={imageUrl}
            alt={t('livres.card.imageAlt', { titre: livre.titre })}
            className="book-card-image"
          />
        ) : (
          <div className="book-card-image-placeholder">
            <IconImageEmpty width={40} height={40} aria-hidden="true" />
          </div>
        )}
      </button>

      <div className="book-card-content">
        <div className="book-card-title-row">
          <h3 className="book-card-title">{livre.titre}</h3>
          {livre.serie && (
            <Tooltip text={`${livre.serie}${livre.num_serie ? ` - ${livre.num_serie}` : ''}`}>
              <span className="book-card-serie">
                {livre.serie}
                {livre.num_serie && ` - ${livre.num_serie}`}
              </span>
            </Tooltip>
          )}
        </div>

        {auteur && (
          <p className="book-card-auteur">
            {auteur.prenom} {auteur.nom}
          </p>
        )}

        <div className="book-card-dates">
          {livre.dateDebutLecture && (
            <span className="book-card-date">
              {formatDate(livre.dateDebutLecture)}
            </span>
          )}
          {livre.dateDebutLecture && livre.dateFinLecture && <span> — </span>}
          {livre.dateFinLecture && (
            <span className="book-card-date">
              {formatDate(livre.dateFinLecture)}
            </span>
          )}
        </div>

        <div className="book-card-tags">
          {livre.description && (
            <Tooltip text={livre.description}>
              <span className="book-card-tag">
                {t('livres.card.description')}
              </span>
            </Tooltip>
          )}
          {livre.commentaires && (
            <Tooltip text={livre.commentaires}>
              <span className="book-card-tag">
                {t('livres.card.commentaires')}
              </span>
            </Tooltip>
          )}
        </div>
      </div>
    </div>
  )
}
