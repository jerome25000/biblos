import { NavLink } from 'react-router-dom'
import { t } from '../services/i18nService'
import {
  GUEST_HIDDEN_TABS,
  TAB_ID_PREFIX,
  TAB_ORDER,
  TAB_PANEL_ID,
  TAB_PATHS,
  type Tab,
} from '../constants'

interface TabNavProps {
  isGuest: boolean
  activeTab: Tab | null
}

export function TabNav({ isGuest, activeTab }: Readonly<TabNavProps>) {
  const tabs = TAB_ORDER.filter((tab) => !(isGuest && GUEST_HIDDEN_TABS.includes(tab)))
  return (
    <nav className="dashboard-tabs" role="tablist" aria-label={t('app.tabs.label')}>
      {tabs.map((tab) => {
        const selected = activeTab === tab
        return (
          <NavLink
            key={tab}
            to={TAB_PATHS[tab]}
            role="tab"
            id={`${TAB_ID_PREFIX}${tab}`}
            aria-selected={selected}
            aria-controls={TAB_PANEL_ID}
            className={`dashboard-tab${selected ? ' dashboard-tab-active' : ''}`}
          >
            {t(`app.tab.${tab}`)}
          </NavLink>
        )
      })}
    </nav>
  )
}
