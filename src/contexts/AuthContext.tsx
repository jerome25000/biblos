import type { ReactNode } from 'react'
import { useEffect, useState } from 'react'
import type { Session } from '@supabase/supabase-js'
import { GUEST_ROLE } from '../constants'
import { getSession, onAuthStateChange } from '../services/authService'
import { AuthContext } from './authContextValue'

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
