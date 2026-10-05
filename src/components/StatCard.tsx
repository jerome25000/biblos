import { useEffect, useState } from 'react'
import type { StatRow } from '../services/statsService'
import { STAT_CARD_ICON_CLOSED, STAT_CARD_ICON_OPEN } from '../constants'
import { t } from '../services/i18nService'

interface StatCardProps {
  title: string
  columns: string[]
  load: () => Promise<StatRow[]>
}

export function StatCard({ title, columns, load }: StatCardProps) {
  const [rows, setRows] = useState<StatRow[] | null>(null)
  const [error, setError] = useState(false)
  const [open, setOpen] = useState(true)

  // `load` must be a stable reference (changing it reloads the data)
  useEffect(() => {
    setRows(null)
    setError(false)
    let cancelled = false
    load()
      .then((data) => !cancelled && setRows(data))
      .catch(() => !cancelled && setError(true))
    return () => {
      cancelled = true
    }
  }, [load])

  return (
    <div className="stat-card">
      <button
        type="button"
        className="stat-card-header"
        aria-expanded={open}
        aria-label={t('stats.card.toggle', {
          title,
          action: t(open ? 'stats.card.collapse' : 'stats.card.expand'),
        })}
        onClick={() => setOpen(!open)}
      >
        <span>{title}</span>
        <span aria-hidden="true">{open ? STAT_CARD_ICON_OPEN : STAT_CARD_ICON_CLOSED}</span>
      </button>
      {open && <div className="stat-card-body">{renderBody(rows, error, columns)}</div>}
    </div>
  )
}

function renderBody(rows: StatRow[] | null, error: boolean, columns: string[]) {
  if (error) {
    return (
      <p role="alert" className="error-message">
        {t('stats.error')}
      </p>
    )
  }
  if (!rows) return <span className="spinner-large" />
  if (rows.length === 0) return <p className="books-empty">{t('stats.empty')}</p>
  return (
    <div className="table-scroll">
      <table>
        <thead>
          <tr>
            {columns.map((c) => (
              <th key={c}>{c}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {rows.map((row) => (
            <tr key={row.key}>
              {row.cells.map((cell, i) => (
                <td key={i}>{cell}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  )
}
