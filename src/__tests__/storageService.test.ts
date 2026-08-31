import { describe, it, expect, vi, beforeEach } from 'vitest'
import { getPublicImageUrl } from '../services/storageService'
import * as supabaseModule from '../supabaseClient'

vi.mock('../supabaseClient')

describe('storageService', () => {
  beforeEach(() => {
    vi.clearAllMocks()
  })

  it('returns null for empty or null path', () => {
    expect(getPublicImageUrl(null)).toBeNull()
    expect(getPublicImageUrl('')).toBeNull()
    expect(getPublicImageUrl('   ')).toBeNull()
  })

  it('returns public URL for valid path', () => {
    const mockPublicUrl = 'https://rlbuhbaltefjlbhukegj.supabase.co/storage/v1/object/public/images/test.jpg'
    vi.spyOn(supabaseModule, 'supabase', 'get').mockReturnValue({
      storage: {
        from: vi.fn().mockReturnValue({
          getPublicUrl: vi.fn().mockReturnValue({
            data: { publicUrl: mockPublicUrl },
          }),
        }),
      },
    } as any)

    const result = getPublicImageUrl('images/moby-dick.jpg')
    expect(result).toBe(mockPublicUrl)
  })

  it('calls storage.from with "images" bucket', () => {
    const mockFrom = vi.fn().mockReturnValue({
      getPublicUrl: vi.fn().mockReturnValue({
        data: { publicUrl: 'http://example.com/image.jpg' },
      }),
    })
    vi.spyOn(supabaseModule, 'supabase', 'get').mockReturnValue({
      storage: { from: mockFrom },
    } as any)

    getPublicImageUrl('images/test.jpg')
    expect(mockFrom).toHaveBeenCalledWith('images')
  })
})
