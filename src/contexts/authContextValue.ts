import { createContext } from 'react'
import type { Session } from '@supabase/supabase-js'

export interface AuthContextType {
  session: Session | null
  isGuest: boolean
  loading: boolean
}

export const AuthContext = createContext<AuthContextType | undefined>(undefined)
