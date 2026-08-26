import { useEffect, useState } from 'react'
import type { Session } from '@supabase/supabase-js'
import { getSession, onAuthStateChange, signOut } from './services/authService'
import { t } from './services/i18nService'
import { exportDatabaseAsSQL, downloadSQL } from './services/exportSqlService'
import { Login } from './components/Login'
import { LivresList } from './components/LivresList'

function App() {
  const [session, setSession] = useState<Session | null>(null)
  const [checkingSession, setCheckingSession] = useState(true)
  const [isExporting, setIsExporting] = useState(false)

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
      <main className="dashboard-main">
        <LivresList />
      </main>
    </div>
  )
}

export default App
