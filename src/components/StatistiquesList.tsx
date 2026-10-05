import { StatCard } from './StatCard'
import {
  loadLivresLusParAnnee,
  loadTopAuteursCollectionnes,
  loadTopAuteursLus,
  type StatRow,
} from '../services/statsService'
import { t, type TranslationKey } from '../services/i18nService'

const STAT_CARDS: {
  id: string
  titleKey: TranslationKey
  columnKeys: TranslationKey[]
  load: () => Promise<StatRow[]>
}[] = [
  {
    id: 'parAnnee',
    titleKey: 'stats.parAnnee.title',
    columnKeys: ['stats.parAnnee.column.annee', 'stats.parAnnee.column.count'],
    load: loadLivresLusParAnnee,
  },
  {
    id: 'topAuteurs',
    titleKey: 'stats.topAuteurs.title',
    columnKeys: ['stats.topAuteurs.column.auteur', 'stats.topAuteurs.column.count'],
    load: loadTopAuteursLus,
  },
  {
    id: 'topCollectionnes',
    titleKey: 'stats.topCollectionnes.title',
    columnKeys: ['stats.topCollectionnes.column.auteur', 'stats.topCollectionnes.column.count'],
    load: loadTopAuteursCollectionnes,
  },
]

export function StatistiquesList() {
  return (
    <section className="books-workspace">
      <div className="books-workspace-header">
        <div className="books-workspace-title">
          <h1>{t('stats.title')}</h1>
        </div>
      </div>
      <div className="stats-panels">
        {STAT_CARDS.map((card) => (
          <StatCard
            key={card.id}
            title={t(card.titleKey)}
            columns={card.columnKeys.map((k) => t(k))}
            load={card.load}
          />
        ))}
      </div>
    </section>
  )
}
