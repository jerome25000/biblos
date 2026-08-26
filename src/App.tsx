import { useEffect, useState } from 'react'
import type { Session } from '@supabase/supabase-js'
import { getSession, onAuthStateChange, signOut } from './services/authService'
import { t } from './services/i18nService'
import { Login } from './components/Login'
import { LivresList } from './components/LivresList'

function App() {
  const [session, setSession] = useState<Session | null>(null)
  const [checkingSession, setCheckingSession] = useState(true)

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
