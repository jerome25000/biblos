import type { ReactNode } from 'react'
import { useRef, useState, useEffect } from 'react'

interface TooltipProps {
  text: string | null
  children: ReactNode
}

export function Tooltip({ text, children }: TooltipProps) {
  const wrapperRef = useRef<HTMLSpanElement>(null)
  const bubbleRef = useRef<HTMLSpanElement>(null)
  const [isVisible, setIsVisible] = useState(false)
  const [position, setPosition] = useState({ top: 0, left: 0 })

  useEffect(() => {
    if (isVisible && wrapperRef.current && bubbleRef.current) {
      const rect = wrapperRef.current.getBoundingClientRect()
      const bubbleWidth = bubbleRef.current.offsetWidth || 400
      const bubbleHeight = bubbleRef.current.offsetHeight || 100

      let left = rect.left + rect.width / 2 - bubbleWidth / 2

      const padding = 10
      if (left < padding) {
        left = padding
      } else if (left + bubbleWidth > window.innerWidth - padding) {
        left = window.innerWidth - bubbleWidth - padding
      }

      setPosition({
        top: rect.top + window.scrollY - bubbleHeight - 10,
        left: left + window.scrollX,
      })
    }
  }, [isVisible])

  const handleMouseEnter = () => {
    setIsVisible(true)
  }

  if (!text || text.trim() === '') {
    return children
  }

  return (
    <span
      ref={wrapperRef}
      className="tooltip-wrapper"
      onMouseEnter={handleMouseEnter}
      onMouseLeave={() => setIsVisible(false)}
    >
      {children}
      {isVisible && (
        <span
          ref={bubbleRef}
          className="tooltip-bubble"
          style={{
            position: 'fixed',
            top: `${position.top}px`,
            left: `${position.left}px`,
            transform: 'none',
            opacity: 1,
            transition: 'none',
          }}
        >
          {text}
        </span>
      )}
    </span>
  )
}
