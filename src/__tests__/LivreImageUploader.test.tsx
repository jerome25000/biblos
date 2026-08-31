import { describe, it, expect, vi, beforeEach } from 'vitest'
import { render, screen, fireEvent } from '@testing-library/react'
import * as storageServiceModule from '../services/storageService'
import { LivreImageUploader } from '../components/LivreImageUploader'

vi.mock('../services/storageService')
vi.mock('../services/i18nService', () => ({
  t: (key: string) => {
    const translations: Record<string, string> = {
      'livreForm.field.image': 'Cover',
      'livreForm.image.choose': 'Choose a file',
      'livreForm.image.originalSize': 'Original size',
      'livreForm.image.resizedSize': 'Resized size',
      'livreForm.image.width': 'Width (px)',
      'livreForm.image.height': 'Height (px)',
      'livreForm.image.keepRatio': 'Keep aspect ratio',
      'livreForm.image.upload': 'Upload',
      'livreForm.image.uploading': 'Uploading...',
      'livreForm.image.error': 'Error uploading image',
      'livreForm.image.alt': `Cover of preview`,
    }
    return translations[key] || key
  },
}))

describe('LivreImageUploader', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    vi.mocked(storageServiceModule.getPublicImageUrl).mockReturnValue(null)
    vi.mocked(storageServiceModule.uploadImage).mockResolvedValue(undefined)
  })

  it('renders placeholder when value is null', () => {
    render(
      <LivreImageUploader value={null} onChange={vi.fn()} disabled={false} />
    )
    expect(screen.getByRole('button', { name: /Choose a file/i })).toBeInTheDocument()
  })

  it('displays current image when value is set', () => {
    const mockImageUrl = 'https://example.com/image.jpg'
    vi.mocked(storageServiceModule.getPublicImageUrl).mockReturnValue(
      mockImageUrl
    )

    render(
      <LivreImageUploader
        value="images/test.jpg"
        onChange={vi.fn()}
        disabled={false}
      />
    )

    const img = screen.getByRole('img', { hidden: false })
    expect(img).toHaveAttribute('src', mockImageUrl)
  })

  it('opens file picker when Choose button is clicked', () => {
    const { container } = render(
      <LivreImageUploader value={null} onChange={vi.fn()} disabled={false} />
    )

    const fileInput = container.querySelector(
      'input[type="file"]'
    ) as HTMLInputElement
    const clickSpy = vi.spyOn(fileInput, 'click')

    fireEvent.click(screen.getByRole('button', { name: /Choose a file/i }))
    expect(clickSpy).toHaveBeenCalled()
  })

  it('disables controls when disabled prop is true', () => {
    render(
      <LivreImageUploader value={null} onChange={vi.fn()} disabled={true} />
    )
    expect(
      screen.getByRole('button', { name: /Choose a file/i })
    ).toBeDisabled()
  })

  it('calls getPublicImageUrl when value prop is provided', () => {
    vi.mocked(storageServiceModule.getPublicImageUrl).mockReturnValue(null)

    render(
      <LivreImageUploader
        value="images/test.jpg"
        onChange={vi.fn()}
        disabled={false}
      />
    )

    expect(storageServiceModule.getPublicImageUrl).toHaveBeenCalledWith('images/test.jpg')
  })
})
