import { describe, expect, it, vi, beforeEach } from 'vitest'
import { render, screen, waitFor } from '@testing-library/react'
import type { Session } from '@supabase/supabase-js'

const getSessionMock = vi.fn()
const onAuthStateChangeMock = vi.fn()
const signOutMock = vi.fn()

vi.mock('../services/authService', () => ({
  getSession: getSessionMock,
  onAuthStateChange: onAuthStateChangeMock,
  signOut: signOutMock,
}))

const { default: App } = await import('../App')

const session = { user: { id: '1' } } as unknown as Session

describe('App', () => {
  beforeEach(() => {
    getSessionMock.mockReset()
    onAuthStateChangeMock.mockReset()
    onAuthStateChangeMock.mockReturnValue(() => {})
    signOutMock.mockReset()
  })

  it('shows the login form when there is no session', async () => {
    getSessionMock.mockResolvedValue(null)

    render(<App />)

    expect(await screen.findByText('Connexion')).toBeInTheDocument()
  })

  it('shows the books list when a session exists', async () => {
    getSessionMock.mockResolvedValue(session)

    render(<App />)

    expect(await screen.findByText('Mes livres')).toBeInTheDocument()
  })

  it('subscribes to auth state changes on mount and unsubscribes on unmount', async () => {
    getSessionMock.mockResolvedValue(null)
    const unsubscribe = vi.fn()
    onAuthStateChangeMock.mockReturnValue(unsubscribe)

    const { unmount } = render(<App />)
    await waitFor(() => expect(onAuthStateChangeMock).toHaveBeenCalled())

    unmount()

    expect(unsubscribe).toHaveBeenCalled()
  })
})
