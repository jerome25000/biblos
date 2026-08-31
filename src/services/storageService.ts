import { supabase } from '../supabaseClient'

export function getPublicImageUrl(path: string | null): string | null {
  if (!path || path.trim() === '') {
    return null
  }

  const { data } = supabase.storage.from('images').getPublicUrl(path)
  return data.publicUrl
}
