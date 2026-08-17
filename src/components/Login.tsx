import { useState } from 'react'
import type { FormEvent } from 'react'
import { signIn } from '../services/authService'
import { t } from '../services/i18nService'

export function Login() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState(false)

  async function handleSubmit(event: FormEvent) {
    event.preventDefault()
    setLoading(true)
    setError(false)
    try {
      await signIn(email, password)
    } catch {
      setError(true)
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="login-container">
      <div className="login-card">
        <div className="login-header">
          <div className="logo-icon">B</div>
          <h2>{t('login.title')}</h2>
        </div>
        <form onSubmit={handleSubmit} className="login-form">
          {error && (
            <p role="alert" className="error-message">
              {t('login.error')}
            </p>
          )}
          <div className="form-group">
            <label htmlFor="email">{t('login.email')}</label>
            <input
              id="email"
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
              disabled={loading}
              className="form-input"
            />
          </div>
          <div className="form-group">
            <label htmlFor="password">{t('login.password')}</label>
            <input
              id="password"
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
              disabled={loading}
              className="form-input"
            />
          </div>
          <button type="submit" className="login-btn" disabled={loading}>
            {loading ? <span className="spinner" /> : t('login.submit')}
          </button>
        </form>
      </div>
    </div>
  )
}
