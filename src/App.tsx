import { useEffect, useState } from 'react'
import type { Session } from '@supabase/supabase-js'
import { getSession, onAuthStateChange, signOut } from './services/authService'
import { t } from './services/i18nService'
import { exportDatabaseAsSQL, downloadSQL } from './services/exportSqlService'
import { Login } from './components/Login'
import { LivresList } from './components/LivresList'
import { AuteursList } from './components/AuteursList'

type Tab = 'livres' | 'auteurs'

function App() {
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
          <div className="brand-logo">B</div>
          <h1>{t('app.title')}</h1>
        </div>
        <div className="header-user">
          {session.user.email && (
            <span className="user-email">{session.user.email}</span>
          )}
          <button
            type="button"
            className="export-btn"
            onClick={handleExport}
            disabled={isExporting}
          >
            {isExporting ? t('app.exporting') : t('app.export')}
          </button>
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
      </nav>
      <main
        className="dashboard-main"
        role="tabpanel"
        id="tabpanel-content"
        aria-labelledby={activeTab === 'livres' ? 'tab-livres' : 'tab-auteurs'}
      >
        {activeTab === 'livres' ? <LivresList /> : <AuteursList />}
      </main>
    </div>
  )
}

export default App
