import { useEffect, useState } from 'react'
import {
  computeAnneeStats,
  computeTopAuteurStats,
  fetchLivresLus,
  type AnneeStat,
  type AuteurStat,
} from '../services/statsService'
import { fetchAuteurs } from '../services/referentielsService'
import { t } from '../services/i18nService'

export function StatistiquesList() {
  const [anneeStats, setAnneeStats] = useState<AnneeStat[]>([])
  const [auteurStats, setAuteurStats] = useState<AuteurStat[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(false)

  useEffect(() => {
    let cancelled = false
    setLoading(true)
    setError(false)

    Promise.all([fetchLivresLus(), fetchAuteurs()])
      .then(([livres, auteurs]) => {
        if (cancelled) return
        setAnneeStats(computeAnneeStats(livres))
        setAuteurStats(computeTopAuteurStats(livres, auteurs))
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
  }, [])

  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <div className="books-workspace-title">
          <h1>{t('stats.title')}</h1>
        </div>
      </div>
      {loading && (
        <div className="books-empty">
          <span className="spinner-large" />
          <p>{t('stats.loading')}</p>
        </div>
      )}
      {error && (
        <p role="alert" className="error-message">
          {t('stats.error')}
        </p>
      )}
      {!loading && !error && (
        <div className="stats-panels">
          <AnneeStatsPanel stats={anneeStats} />
          <TopAuteursPanel stats={auteurStats} />
        </div>
      )}
    </section>
  )
}

function AnneeStatsPanel({ stats }: { stats: AnneeStat[] }) {
  return (
    <div className="stats-panel">
      <h2>{t('stats.parAnnee.title')}</h2>
      {stats.length === 0 ? (
        <p className="books-empty">{t('stats.empty')}</p>
      ) : (
        <div className="table-scroll">
          <table>
            <thead>
              <tr>
                <th>{t('stats.parAnnee.column.annee')}</th>
                <th>{t('stats.parAnnee.column.count')}</th>
              </tr>
            </thead>
            <tbody>
              {stats.map((stat) => (
                <tr key={stat.annee}>
                  <td>{stat.annee}</td>
                  <td>{stat.count}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  )
}

function TopAuteursPanel({ stats }: { stats: AuteurStat[] }) {
  return (
    <div className="stats-panel">
      <h2>{t('stats.topAuteurs.title')}</h2>
      {stats.length === 0 ? (
        <p className="books-empty">{t('stats.empty')}</p>
      ) : (
        <div className="table-scroll">
          <table>
            <thead>
              <tr>
                <th>{t('stats.topAuteurs.column.auteur')}</th>
                <th>{t('stats.topAuteurs.column.count')}</th>
              </tr>
            </thead>
            <tbody>
              {stats.map((stat) => (
                <tr key={stat.auteurId}>
                  <td>{stat.nom}</td>
                  <td>{stat.count}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  )
}
