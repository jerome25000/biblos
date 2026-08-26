import { describe, expect, it, vi, beforeEach } from 'vitest'

const signInWithPasswordMock = vi.fn()
const signOutMock = vi.fn()
const getSessionMock = vi.fn()
const onAuthStateChangeMock = vi.fn()
const unsubscribeMock = vi.fn()

vi.mock('../supabaseClient', () => ({
  supabase: {
    auth: {
      signInWithPassword: signInWithPasswordMock,
      signOut: signOutMock,
      getSession: getSessionMock,
      onAuthStateChange: onAuthStateChangeMock,
    },
  },
}))

const { signIn, signOut, getSession, onAuthStateChange } = await import(
  '../services/authService'
)

describe('authService', () => {
  beforeEach(() => {
    signInWithPasswordMock.mockReset()
    signOutMock.mockReset()
    getSessionMock.mockReset()
    onAuthStateChangeMock.mockReset()
    unsubscribeMock.mockReset()
  })

  describe('signIn', () => {
    it('signs in with the given email and password', async () => {
      signInWithPasswordMock.mockResolvedValue({ error: null })

      await signIn('jerome@example.com', 'secret')

      expect(signInWithPasswordMock).toHaveBeenCalledWith({
        email: 'jerome@example.com',
        password: 'secret',
      })
    })

    it('throws when supabase returns an error', async () => {
      signInWithPasswordMock.mockResolvedValue({ error: new Error('bad credentials') })

      await expect(signIn('jerome@example.com', 'wrong')).rejects.toThrow(
        'bad credentials',
      )
    })
  })

  describe('signOut', () => {
    it('signs out', async () => {
      signOutMock.mockResolvedValue({ error: null })

      await signOut()

      expect(signOutMock).toHaveBeenCalled()
    })

    it('throws when supabase returns an error', async () => {
      signOutMock.mockResolvedValue({ error: new Error('boom') })

      await expect(signOut()).rejects.toThrow('boom')
    })
  })

  describe('getSession', () => {
    it('returns the current session', async () => {
      const session = { user: { id: '1' } }
      getSessionMock.mockResolvedValue({ data: { session } })

      const result = await getSession()

      expect(result).toBe(session)
    })

    it('returns null when there is no session', async () => {
      getSessionMock.mockResolvedValue({ data: { session: null } })

      const result = await getSession()

      expect(result).toBeNull()
    })
  })

  describe('onAuthStateChange', () => {
    it('forwards session changes to the callback and returns an unsubscribe function', () => {
      let capturedCallback: (event: unknown, session: unknown) => void = () => {}
      onAuthStateChangeMock.mockImplementation((cb: typeof capturedCallback) => {
        capturedCallback = cb
        return { data: { subscription: { unsubscribe: unsubscribeMock } } }
      })
      const callback = vi.fn()

      const unsubscribe = onAuthStateChange(callback)
      const session = { user: { id: '2' } }
      capturedCallback('SIGNED_IN', session)

      expect(callback).toHaveBeenCalledWith(session)

      unsubscribe()

      expect(unsubscribeMock).toHaveBeenCalled()
    })
  })
})
