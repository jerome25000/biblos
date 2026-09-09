import type { ReactNode } from 'react'
import { createContext, useContext, useEffect, useState } from 'react'
import type { Session } from '@supabase/supabase-js'
import { GUEST_ROLE } from '../constants'
import { getSession, onAuthStateChange } from '../services/authService'

interface AuthContextType {
  session: Session | null
  isGuest: boolean
  loading: boolean
}

const AuthContext = createContext<AuthContextType | undefined>(undefined)

export function AuthProvider({ children }: { children: ReactNode }) {
  const [session, setSession] = useState<Session | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    getSession().then((session) => {
      setSession(session)
      setLoading(false)
    })

    const unsubscribe = onAuthStateChange((session) => {
      setSession(session)
    })

    return unsubscribe
  }, [])

  const isGuest = session?.user?.app_metadata?.role === GUEST_ROLE

  return (
    <AuthContext.Provider value={{ session, isGuest, loading }}>
      {children}
    </AuthContext.Provider>
  )
}

export function useAuth() {
  const context = useContext(AuthContext)
  if (context === undefined) {
    throw new Error('useAuth must be used within AuthProvider')
  }
  return context
}
