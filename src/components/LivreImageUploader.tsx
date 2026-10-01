import { useRef, useState, useEffect } from 'react'
import type { ChangeEvent } from 'react'
import { t } from '../services/i18nService'
import {
  formatBytes,
  detectImageMimeType,
  validateImageFile,
  getImageExtension,
} from '../services/utilities'
import {
  IMAGE_ERROR_KEYS,
  IMAGE_EXPORT_QUALITY,
  IMAGE_FALLBACK_MIME_TYPE,
  IMAGE_FILE_ACCEPT,
  IMAGE_MAGIC_BYTES_LENGTH,
  MAX_IMAGE_FILE_SIZE_BYTES,
  STORAGE_IMAGES_FOLDER,
} from '../constants'
import { uploadImage, getPublicImageUrl } from '../services/storageService'
import IconImageEmpty from '../assets/icons/image-empty.svg?react'

interface LivreImageUploaderProps {
  value: string | null
  onChange: (path: string) => void
  disabled?: boolean
}

interface ImageState {
  originalFile: File | null
  mimeType: string
  originalImage: HTMLImageElement | null
  originalWidth: number
  originalHeight: number
  resizedWidth: number
  resizedHeight: number
  keepRatio: boolean
  resizedBlob: Blob | null
  resizedDataUrl: string | null
  originalSize: number
  resizedSize: number
}

export function LivreImageUploader({
  value,
  onChange,
  disabled = false,
}: LivreImageUploaderProps) {
  const fileInputRef = useRef<HTMLInputElement>(null)
  const canvasRef = useRef<HTMLCanvasElement>(null)

  const [state, setState] = useState<ImageState>({
    originalFile: null,
    mimeType: IMAGE_FALLBACK_MIME_TYPE,
    originalImage: null,
    originalWidth: 0,
    originalHeight: 0,
    resizedWidth: 0,
    resizedHeight: 0,
    keepRatio: true,
    resizedBlob: null,
    resizedDataUrl: null,
    originalSize: 0,
    resizedSize: 0,
  })

  const [uploading, setUploading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  const currentImageUrl = value ? getPublicImageUrl(value) : null

  function loadImage(file: File, mimeType: string) {
    const reader = new FileReader()
    reader.onerror = () => setError(t(IMAGE_ERROR_KEYS.readFailed))
    reader.onload = (event) => {
      const img = new Image()
      img.onerror = () => setError(t(IMAGE_ERROR_KEYS.loadFailed))
      img.onload = () => {
        setState((prev) => ({
          ...prev,
          originalFile: file,
          mimeType,
          originalImage: img,
          originalWidth: img.width,
          originalHeight: img.height,
          resizedWidth: img.width,
          resizedHeight: img.height,
          originalSize: file.size,
        }))
      }
      img.src = event.target?.result as string
    }
    reader.readAsDataURL(file)
  }

  function checkMagicBytes(file: File) {
    const reader = new FileReader()
    reader.onerror = () => setError(t(IMAGE_ERROR_KEYS.readFailed))
    reader.onload = (event) => {
      const bytes = new Uint8Array(event.target?.result as ArrayBuffer)
      const mimeType = detectImageMimeType(bytes)
      if (!mimeType) {
        setError(t(IMAGE_ERROR_KEYS.invalidType))
        return
      }
      loadImage(file, mimeType)
    }
    reader.readAsArrayBuffer(file.slice(0, IMAGE_MAGIC_BYTES_LENGTH))
  }

  function handleFileSelect(e: ChangeEvent<HTMLInputElement>) {
    setError(null)
    const input = e.target
    const file = input.files?.[0]
    if (!file) return

    const errorKey = validateImageFile(file)
    if (errorKey) {
      setError(t(errorKey, { max: formatBytes(MAX_IMAGE_FILE_SIZE_BYTES) }))
      input.value = ''
      return
    }
    checkMagicBytes(file)
    input.value = ''
  }

  function updateDimension(
    dimension: 'width' | 'height',
    newValue: number,
  ): void {
    if (newValue <= 0) return
    setState((prev) => {
      if (!prev.originalImage || !prev.keepRatio) {
        return {
          ...prev,
          [dimension === 'width' ? 'resizedWidth' : 'resizedHeight']: newValue,
        }
      }

      const ratio = prev.originalWidth / prev.originalHeight
      if (dimension === 'width') {
        return {
          ...prev,
          resizedWidth: newValue,
          resizedHeight: Math.round(newValue / ratio),
        }
      } else {
        return {
          ...prev,
          resizedHeight: newValue,
          resizedWidth: Math.round(newValue * ratio),
        }
      }
    })
  }

  useEffect(() => {
    if (!state.originalImage || !canvasRef.current) return

    const canvas = canvasRef.current
    const ctx = canvas.getContext('2d')
    if (!ctx) return

    canvas.width = state.resizedWidth
    canvas.height = state.resizedHeight

    ctx.imageSmoothingEnabled = true
    ctx.imageSmoothingQuality = 'high'
    ctx.drawImage(
      state.originalImage,
      0,
      0,
      state.resizedWidth,
      state.resizedHeight,
    )

    const mimeType = state.mimeType

    canvas.toBlob(
      (blob) => {
        if (blob) {
          setState((prev) => ({
            ...prev,
            resizedBlob: blob,
            resizedSize: blob.size,
            resizedDataUrl: canvas.toDataURL(mimeType),
          }))
        }
      },
      mimeType,
      IMAGE_EXPORT_QUALITY,
    )
  }, [
    state.originalImage,
    state.resizedWidth,
    state.resizedHeight,
    state.mimeType,
  ])

  async function handleUpload() {
    if (!state.resizedBlob || !state.originalFile) {
      setError(t('livreForm.image.error'))
      return
    }

    setUploading(true)
    setError(null)

    try {
      const ext = getImageExtension(state.resizedBlob.type)
      if (!ext) {
        setError(t(IMAGE_ERROR_KEYS.invalidType))
        return
      }
      const path = `${STORAGE_IMAGES_FOLDER}/${crypto.randomUUID()}.${ext}`

      await uploadImage(path, state.resizedBlob)
      onChange(path)

      setState((prev) => ({
        ...prev,
        originalFile: null,
        originalImage: null,
        originalWidth: 0,
        originalHeight: 0,
        resizedWidth: 0,
        resizedHeight: 0,
        resizedBlob: null,
        resizedDataUrl: null,
        originalSize: 0,
        resizedSize: 0,
      }))
    } catch {
      setError(t('livreForm.image.error'))
    } finally {
      setUploading(false)
    }
  }

  const hasImage = state.originalImage !== null
  const canUpload = !uploading && state.resizedBlob !== null

  return (
    <div className="livre-image-uploader">
      <div className="image-uploader-content">
        <div className="image-preview">
          {hasImage && state.resizedDataUrl ? (
            <img
              src={state.resizedDataUrl}
              alt={t('livreForm.image.alt', { titre: 'preview' })}
              className="resized-preview"
            />
          ) : currentImageUrl ? (
            <img src={currentImageUrl} alt="current" className="current-image" />
          ) : (
            <div className="image-placeholder">
              <IconImageEmpty width={40} height={40} />
            </div>
          )}
        </div>

        {error && (
          <p role="alert" className="error-message">
            {error}
          </p>
        )}

        <div className="image-uploader-controls">
          <button
            type="button"
            className="btn-secondary"
            onClick={() => fileInputRef.current?.click()}
            disabled={disabled || uploading}
          >
            {t('livreForm.image.choose')}
          </button>
          <input
            ref={fileInputRef}
            type="file"
            accept={IMAGE_FILE_ACCEPT}
            hidden
            onChange={handleFileSelect}
            disabled={disabled || uploading}
          />
        </div>

        {hasImage && (
          <div className="image-sizes">
            <div className="size-info">
              <span className="size-label">
                {t('livreForm.image.originalSize')}:
              </span>
              <span>{formatBytes(state.originalSize)}</span>
            </div>
            <div className="size-info">
              <span className="size-label">
                {t('livreForm.image.resizedSize')}:
              </span>
              <span>{formatBytes(state.resizedSize)}</span>
            </div>
          </div>
        )}

        {hasImage && (
          <div className="image-dimensions">
            <div className="dimension-input-group">
              <label htmlFor="image-width">
                {t('livreForm.image.width')}
              </label>
              <input
                id="image-width"
                type="number"
                className="form-input"
                value={state.resizedWidth}
                onChange={(e) => updateDimension('width', Number(e.target.value))}
                disabled={disabled || uploading}
              />
            </div>
            <div className="dimension-input-group">
              <label htmlFor="image-height">
                {t('livreForm.image.height')}
              </label>
              <input
                id="image-height"
                type="number"
                className="form-input"
                value={state.resizedHeight}
                onChange={(e) =>
                  updateDimension('height', Number(e.target.value))
                }
                disabled={disabled || uploading}
              />
            </div>
            <div className="checkbox-group">
              <label htmlFor="keep-ratio">
                <input
                  id="keep-ratio"
                  type="checkbox"
                  checked={state.keepRatio}
                  onChange={(e) =>
                    setState((prev) => ({
                      ...prev,
                      keepRatio: e.target.checked,
                    }))
                  }
                  disabled={disabled || uploading}
                />
                {t('livreForm.image.keepRatio')}
              </label>
            </div>
          </div>
        )}

        {hasImage && (
          <button
            type="button"
            className="btn-primary"
            onClick={handleUpload}
            disabled={!canUpload || disabled}
          >
            {uploading ? t('livreForm.image.uploading') : t('livreForm.image.upload')}
          </button>
        )}
      </div>

      <canvas ref={canvasRef} hidden />
    </div>
  )
}
