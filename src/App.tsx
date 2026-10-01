import { useState } from 'react'
import { Navigate, Route, Routes, useLocation } from 'react-router-dom'
import { TabNav } from './components/TabNav'
import { DEFAULT_TAB_PATH, ROOT_PATH, TAB_ID_PREFIX, TAB_PANEL_ID, TAB_PATHS, UNKNOWN_PATH } from './constants'
import { getTabFromPath } from './services/utilities'
import { signOut } from './services/authService'
import { t } from './services/i18nService'
import { exportDatabaseAsSQL, downloadSQL } from './services/exportSqlService'
import { AuthProvider } from './contexts/AuthContext'
import { Login } from './components/Login'
import { LivresList } from './components/LivresList'
import { AuteursList } from './components/AuteursList'
import { EditeursList } from './components/EditeursList'
import { EmpruntsList } from './components/EmpruntsList'
import { StatistiquesList } from './components/StatistiquesList'
import { useAuth } from './hooks/useAuth'
import biblosLogo from './assets/icons/biblos.png'

function TabRoutes({ isGuest }: { isGuest: boolean }) {
  const fallback = <Navigate to={DEFAULT_TAB_PATH} replace />
  return (
    <Routes>
      <Route path={ROOT_PATH} element={fallback} />
      <Route path={TAB_PATHS.livres} element={<LivresList />} />
      <Route path={TAB_PATHS.auteurs} element={<AuteursList />} />
      <Route path={TAB_PATHS.editeurs} element={<EditeursList />} />
      <Route path={TAB_PATHS.emprunts} element={isGuest ? fallback : <EmpruntsList />} />
      <Route path={TAB_PATHS.statistiques} element={<StatistiquesList />} />
      <Route path={UNKNOWN_PATH} element={fallback} />
    </Routes>
  )
}

function AppContent() {
  const { session, isGuest, loading } = useAuth()
  const [isExporting, setIsExporting] = useState(false)
  const { pathname } = useLocation()
  const activeTab = getTabFromPath(pathname)

  const handleExport = async () => {
    try {
      setIsExporting(true)
      const sqlContent = await exportDatabaseAsSQL()
      const timestamp = new Date().toISOString().split('T')[0]
      downloadSQL(sqlContent, `biblos_export_${timestamp}.sql`)
    } catch (error) {
      console.error('Export failed:', error)
      alert(t('app.exportError'))
    } finally {
      setIsExporting(false)
    }
  }

  if (loading) {
    return (
      <div className="loading-screen">
        <div className="spinner-large" />
        <p>{t('app.loading')}</p>
      </div>
    )
  }

  if (!session) {
    return <Login />
  }

  return (
    <div className="dashboard-container">
      <header className="dashboard-header">
        <div className="header-brand">
          <img src={biblosLogo} alt="Biblos" className="brand-logo" />
          {/* <h1>{t('app.title')}</h1> */}
        </div>
        <div className="header-user">
          {session.user.email && (
            <span className="user-email">
              {session.user.email}
              {isGuest && (
                <span className="guest-badge" title={t('guest.readOnlyTooltip')}>
                  {t('guest.readOnlyBadge')}
                </span>
              )}
            </span>
          )}
          {!isGuest && (
            <button
              type="button"
              className="export-btn"
              onClick={handleExport}
              disabled={isExporting}
            >
              {isExporting ? t('app.exporting') : t('app.export')}
            </button>
          )}
          <button type="button" className="logout-btn" onClick={() => signOut()}>
            {t('app.logout')}
          </button>
        </div>
      </header>
      <TabNav isGuest={isGuest} activeTab={activeTab} />
      <main
        className="dashboard-main"
        role="tabpanel"
        id={TAB_PANEL_ID}
        aria-labelledby={activeTab ? `${TAB_ID_PREFIX}${activeTab}` : undefined}
      >
        <TabRoutes isGuest={isGuest} />
      </main>
    </div>
  )
}

function App() {
  return (
    <AuthProvider>
      <AppContent />
    </AuthProvider>
  )
}

export default App
