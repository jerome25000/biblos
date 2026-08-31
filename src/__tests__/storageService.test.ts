import { describe, it, expect, vi, beforeEach } from 'vitest'
import { getPublicImageUrl, uploadImage } from '../services/storageService'
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

  describe('uploadImage', () => {
    it('uploads a blob to the correct path', async () => {
      const mockUpload = vi.fn().mockResolvedValue({ error: null })
      const mockFrom = vi.fn().mockReturnValue({
        upload: mockUpload,
      })
      vi.spyOn(supabaseModule, 'supabase', 'get').mockReturnValue({
        storage: { from: mockFrom },
      } as any)

      const blob = new Blob(['test'], { type: 'image/jpeg' })
      await uploadImage('images/test.jpg', blob)

      expect(mockFrom).toHaveBeenCalledWith('images')
      expect(mockUpload).toHaveBeenCalledWith('images/test.jpg', blob, {
        upsert: true,
        contentType: 'image/jpeg',
      })
    })

    it('throws on upload error', async () => {
      const mockError = new Error('Upload failed')
      const mockUpload = vi.fn().mockResolvedValue({ error: mockError })
      const mockFrom = vi.fn().mockReturnValue({
        upload: mockUpload,
      })
      vi.spyOn(supabaseModule, 'supabase', 'get').mockReturnValue({
        storage: { from: mockFrom },
      } as any)

      const blob = new Blob(['test'], { type: 'image/jpeg' })
      await expect(uploadImage('images/test.jpg', blob)).rejects.toThrow(
        'Upload failed'
      )
    })
  })
})
