import { Component } from 'react'
import type { ErrorInfo, ReactNode } from 'react'
import { t } from '../services/i18nService'
import { ERROR_BOUNDARY_LOG_PREFIX } from '../constants'

interface ErrorBoundaryProps {
  children: ReactNode
}

interface ErrorBoundaryState {
  hasError: boolean
}

export class ErrorBoundary extends Component<ErrorBoundaryProps, ErrorBoundaryState> {
  state: ErrorBoundaryState = { hasError: false }

  static getDerivedStateFromError(): ErrorBoundaryState {
    return { hasError: true }
  }

  componentDidCatch(error: Error, info: ErrorInfo): void {
    console.error(ERROR_BOUNDARY_LOG_PREFIX, error, info.componentStack)
  }

  private handleReload = (): void => {
    window.location.reload()
  }

  render(): ReactNode {
    if (!this.state.hasError) return this.props.children
    return (
      <div className="loading-screen" role="alert">
        <h1>{t('errorBoundary.title')}</h1>
        <p>{t('errorBoundary.message')}</p>
        <button type="button" onClick={this.handleReload}>
          {t('errorBoundary.reload')}
        </button>
      </div>
    )
  }
}
