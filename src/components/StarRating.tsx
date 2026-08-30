import { useId } from 'react'
import { t } from '../services/i18nService'

interface StarRatingProps {
  value: number | null
  onChange: (value: number | null) => void
  disabled?: boolean
}

const STAR_COUNT = 5

function starFillPercent(value: number | null, starIndex: number): number {
  if (!value) return 0
  const filled = value - (starIndex - 1)
  return Math.max(0, Math.min(1, filled)) * 100
}

export function StarRating({ value, onChange, disabled }: StarRatingProps) {
  const id = useId()

  function handleSelect(starIndex: number, half: 'left' | 'right') {
    if (disabled) return
    const selected = half === 'left' ? starIndex - 0.5 : starIndex
    onChange(value === selected ? null : selected)
  }

  return (
    <div className="star-rating" aria-label={t('livreForm.field.note')}>
      {Array.from({ length: STAR_COUNT }, (_, index) => index + 1).map(
        (starIndex) => (
          <span key={starIndex} className="star-rating-star">
            {/* Inline SVG: dynamic gradient id/offset per render depends on useId() and starFillPercent(). Cannot be static .svg file. */}
            <svg viewBox="0 0 24 24" width="26" height="26" aria-hidden="true">
              <defs>
                <linearGradient id={`star-fill-${id}-${starIndex}`}>
                  <stop
                    offset={`${starFillPercent(value, starIndex)}%`}
                    stopColor="currentColor"
                  />
                  <stop
                    offset={`${starFillPercent(value, starIndex)}%`}
                    stopColor="transparent"
                  />
                </linearGradient>
              </defs>
              <path
                d="M12 2l2.9 6.6 7.1.6-5.4 4.7 1.6 7-6.2-3.8-6.2 3.8 1.6-7L2 9.2l7.1-.6z"
                fill={`url(#star-fill-${id}-${starIndex})`}
                stroke="currentColor"
                strokeWidth="1.2"
              />
            </svg>
            <button
              type="button"
              className="star-rating-half star-rating-half-left"
              disabled={disabled}
              aria-label={`${starIndex - 0.5}`}
              onClick={() => handleSelect(starIndex, 'left')}
            />
            <button
              type="button"
              className="star-rating-half star-rating-half-right"
              disabled={disabled}
              aria-label={`${starIndex}`}
              onClick={() => handleSelect(starIndex, 'right')}
            />
          </span>
        ),
      )}
      <span className="star-rating-value">{value ?? ''}</span>
    </div>
  )
}
