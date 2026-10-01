import { describe, expect, it, vi, beforeEach } from 'vitest'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
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

const renderAt = (path = '/') =>
  render(
    <MemoryRouter initialEntries={[path]}>
      <App />
    </MemoryRouter>,
  )

const expectBooksTabSelected = () =>
  waitFor(() =>
    expect(screen.getByRole('tab', { name: 'Mes livres' })).toHaveAttribute('aria-selected', 'true'),
  )

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

    renderAt()

    expect(await screen.findByText('Connexion')).toBeInTheDocument()
  })

  it('shows the books list when a session exists', async () => {
    getSessionMock.mockResolvedValue(session)

    renderAt()

    expect(
      await screen.findByRole('heading', { name: 'Mes livres' }),
    ).toBeInTheDocument()
  })

  it('switches to the Auteurs tab when clicked', async () => {
    getSessionMock.mockResolvedValue(session)

    renderAt()

    await screen.findByRole('tab', { name: 'Mes livres' })
    fireEvent.click(screen.getByRole('tab', { name: 'Auteurs' }))

    expect(await screen.findByText('Ajouter un auteur')).toBeInTheDocument()
  })

  it('subscribes to auth state changes on mount and unsubscribes on unmount', async () => {
    getSessionMock.mockResolvedValue(null)
    const unsubscribe = vi.fn()
    onAuthStateChangeMock.mockReturnValue(unsubscribe)

    const { unmount } = renderAt()
    await waitFor(() => expect(onAuthStateChangeMock).toHaveBeenCalled())

    unmount()

    expect(unsubscribe).toHaveBeenCalled()
  })

  it('opens a single session fetch and a single auth subscription', async () => {
    getSessionMock.mockResolvedValue(null)

    renderAt()
    await screen.findByText('Connexion')

    expect(getSessionMock).toHaveBeenCalledTimes(1)
    expect(onAuthStateChangeMock).toHaveBeenCalledTimes(1)
  })

  it('redirects the root path to the books tab', async () => {
    getSessionMock.mockResolvedValue(session)

    renderAt('/')

    await expectBooksTabSelected()
  })

  it('opens the tab matching a deep link', async () => {
    getSessionMock.mockResolvedValue(session)

    renderAt('/auteurs')

    expect(await screen.findByText('Ajouter un auteur')).toBeInTheDocument()
    expect(screen.getByRole('tab', { name: 'Auteurs' })).toHaveAttribute('aria-selected', 'true')
  })

  it('falls back to the books tab for unknown paths', async () => {
    getSessionMock.mockResolvedValue(session)

    renderAt('/nope/nothing')

    await expectBooksTabSelected()
  })

  it('redirects a guest from the borrowings route to the books tab', async () => {
    const guestSession = {
      user: { id: '2', app_metadata: { role: 'guest' } },
    } as unknown as Session
    getSessionMock.mockResolvedValue(guestSession)

    renderAt('/emprunts')

    await expectBooksTabSelected()
    expect(screen.queryByRole('tab', { name: 'Emprunteurs' })).not.toBeInTheDocument()
    expect(screen.queryByRole('heading', { name: 'Emprunteurs' })).not.toBeInTheDocument()
  })

  it('links each tab to its own route', async () => {
    getSessionMock.mockResolvedValue(session)

    renderAt()

    expect(await screen.findByRole('tab', { name: 'Auteurs' })).toHaveAttribute('href', '/auteurs')
    expect(screen.getByRole('tab', { name: 'Statistiques' })).toHaveAttribute('href', '/statistiques')
  })
})
