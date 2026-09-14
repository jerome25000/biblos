import { useEffect, useState } from 'react'
import type { Session } from '@supabase/supabase-js'
import { getSession, onAuthStateChange, signOut } from './services/authService'
import { t } from './services/i18nService'
import { exportDatabaseAsSQL, downloadSQL } from './services/exportSqlService'
import { AuthProvider } from './contexts/AuthContext'
import { Login } from './components/Login'
import { LivresList } from './components/LivresList'
import { AuteursList } from './components/AuteursList'
import { EditeursList } from './components/EditeursList'
import { EmpruntsList } from './components/EmpruntsList'
import { GUEST_ROLE } from './constants'
import biblosLogo from './assets/icons/biblos.png'

type Tab = 'livres' | 'auteurs' | 'editeurs' | 'emprunts'

const TAB_IDS: Record<Tab, string> = {
  livres: 'tab-livres',
  auteurs: 'tab-auteurs',
  editeurs: 'tab-editeurs',
  emprunts: 'tab-emprunts',
}

function AppContent() {
  const [session, setSession] = useState<Session | null>(null)
  const [checkingSession, setCheckingSession] = useState(true)
  const [isExporting, setIsExporting] = useState(false)
  const [activeTab, setActiveTab] = useState<Tab>('livres')

  useEffect(() => {
    let cancelled = false

    getSession().then((s) => {
      if (cancelled) return
      setSession(s)
      setCheckingSession(false)
    })
    const unsubscribe = onAuthStateChange(setSession)

    return () => {
      cancelled = true
      unsubscribe()
    }
  }, [])

  const isGuest = session?.user?.app_metadata?.role === GUEST_ROLE

  const handleExport = async () => {
    try {
      setIsExporting(true)
      const sqlContent = await exportDatabaseAsSQL()
      const timestamp = new Date().toISOString().split('T')[0]
      downloadSQL(sqlContent, `biblos_export_${timestamp}.sql`)
    } catch (error) {
      console.error('Export failed:', error)
      alert('Erreur lors de l\'export')
    } finally {
      setIsExporting(false)
    }
  }

  if (checkingSession) {
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
      <nav className="dashboard-tabs" role="tablist" aria-label={t('app.tabs.label')}>
        <button
          type="button"
          role="tab"
          id="tab-livres"
          aria-selected={activeTab === 'livres'}
          aria-controls="tabpanel-content"
          className={`dashboard-tab${activeTab === 'livres' ? ' dashboard-tab-active' : ''}`}
          onClick={() => setActiveTab('livres')}
        >
          {t('app.tab.livres')}
        </button>
        <button
          type="button"
          role="tab"
          id="tab-auteurs"
          aria-selected={activeTab === 'auteurs'}
          aria-controls="tabpanel-content"
          className={`dashboard-tab${activeTab === 'auteurs' ? ' dashboard-tab-active' : ''}`}
          onClick={() => setActiveTab('auteurs')}
        >
          {t('app.tab.auteurs')}
        </button>
        <button
          type="button"
          role="tab"
          id="tab-editeurs"
          aria-selected={activeTab === 'editeurs'}
          aria-controls="tabpanel-content"
          className={`dashboard-tab${activeTab === 'editeurs' ? ' dashboard-tab-active' : ''}`}
          onClick={() => setActiveTab('editeurs')}
        >
          {t('app.tab.editeurs')}
        </button>
        {!isGuest && (
          <button
            type="button"
            role="tab"
            id="tab-emprunts"
            aria-selected={activeTab === 'emprunts'}
            aria-controls="tabpanel-content"
            className={`dashboard-tab${activeTab === 'emprunts' ? ' dashboard-tab-active' : ''}`}
            onClick={() => setActiveTab('emprunts')}
          >
            {t('app.tab.emprunts')}
          </button>
        )}
      </nav>
      <main
        className="dashboard-main"
        role="tabpanel"
        id="tabpanel-content"
        aria-labelledby={TAB_IDS[activeTab]}
      >
        {activeTab === 'livres' && <LivresList />}
        {activeTab === 'auteurs' && <AuteursList />}
        {activeTab === 'editeurs' && <EditeursList />}
        {activeTab === 'emprunts' && !isGuest && <EmpruntsList />}
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
