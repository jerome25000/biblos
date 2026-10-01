import { describe, it, expect, vi, beforeEach } from 'vitest'
import { render, screen, fireEvent, waitFor } from '@testing-library/react'
import * as storageServiceModule from '../services/storageService'
import { MAX_IMAGE_FILE_SIZE_BYTES } from '../constants'
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
      'livreForm.image.errorTooLarge': 'Too large',
      'livreForm.image.errorInvalidType': 'Invalid type',
      'livreForm.image.errorRead': 'Read failed',
      'livreForm.image.errorLoad': 'Load failed',
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

  function selectFile(container: HTMLElement, file: File) {
    const input = container.querySelector('input[type="file"]') as HTMLInputElement
    fireEvent.change(input, { target: { files: [file] } })
  }

  it('shows an error for a disallowed MIME type', () => {
    const { container } = render(<LivreImageUploader value={null} onChange={vi.fn()} />)
    selectFile(container, new File(['x'], 'a.svg', { type: 'image/svg+xml' }))
    expect(screen.getByRole('alert')).toHaveTextContent('Invalid type')
  })

  it('shows an error for an oversized file', () => {
    const { container } = render(<LivreImageUploader value={null} onChange={vi.fn()} />)
    const file = new File(['x'], 'a.png', { type: 'image/png' })
    Object.defineProperty(file, 'size', { value: MAX_IMAGE_FILE_SIZE_BYTES + 1 })
    selectFile(container, file)
    expect(screen.getByRole('alert')).toHaveTextContent('Too large')
  })

  it('shows an error when magic bytes do not match an image', async () => {
    const { container } = render(<LivreImageUploader value={null} onChange={vi.fn()} />)
    selectFile(container, new File(['<html>not an image'], 'a.png', { type: 'image/png' }))
    await waitFor(() => expect(screen.getByRole('alert')).toHaveTextContent('Invalid type'))
  })

  it('shows an error when the file reader fails', async () => {
    vi.spyOn(FileReader.prototype, 'readAsArrayBuffer').mockImplementation(function (this: FileReader) {
      setTimeout(() => this.onerror?.(new ProgressEvent('error') as ProgressEvent<FileReader>))
    })
    const { container } = render(<LivreImageUploader value={null} onChange={vi.fn()} />)
    selectFile(container, new File(['x'], 'a.png', { type: 'image/png' }))
    await waitFor(() => expect(screen.getByRole('alert')).toHaveTextContent('Read failed'))
    vi.restoreAllMocks()
  })

  it('shows an error when the image cannot be decoded', async () => {
    class FailingImage {
      onload: (() => void) | null = null
      onerror: (() => void) | null = null
      set src(_v: string) {
        setTimeout(() => this.onerror?.())
      }
    }
    vi.stubGlobal('Image', FailingImage)
    const png = new Uint8Array([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0, 0, 0, 0])
    const { container } = render(<LivreImageUploader value={null} onChange={vi.fn()} />)
    selectFile(container, new File([png], 'a.png', { type: 'image/png' }))
    await waitFor(() => expect(screen.getByRole('alert')).toHaveTextContent('Load failed'))
    vi.unstubAllGlobals()
  })

  it('shows no error when the image is valid', async () => {
    class LoadingImage {
      width = 100
      height = 50
      onload: (() => void) | null = null
      onerror: (() => void) | null = null
      set src(_v: string) {
        setTimeout(() => this.onload?.())
      }
    }
    vi.stubGlobal('Image', LoadingImage)
    const png = new Uint8Array([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0, 0, 0, 0])
    const { container } = render(<LivreImageUploader value={null} onChange={vi.fn()} />)
    selectFile(container, new File([png], 'a.png', { type: 'image/png' }))
    await waitFor(() => expect(screen.getByText('Width (px)')).toBeInTheDocument())
    expect(screen.queryByRole('alert')).not.toBeInTheDocument()
    vi.unstubAllGlobals()
  })
})
