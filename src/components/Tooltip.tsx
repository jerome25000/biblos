import type { ReactNode } from 'react'
import { useRef, useState, useEffect, useCallback } from 'react'
import { calculateTooltipPosition } from '../services/utilities'

interface TooltipProps {
  text: string | null
  children: ReactNode
}

export function Tooltip({ text, children }: TooltipProps) {
  const wrapperRef = useRef<HTMLSpanElement>(null)
  const bubbleRef = useRef<HTMLSpanElement>(null)
  const [isVisible, setIsVisible] = useState(false)
  const [position, setPosition] = useState({ top: 0, left: 0 })

  const updatePosition = useCallback(() => {
    if (!wrapperRef.current || !bubbleRef.current) return
    const rect = wrapperRef.current.getBoundingClientRect()
    const bubbleWidth = bubbleRef.current.offsetWidth || 400
    const bubbleHeight = bubbleRef.current.offsetHeight || 100

    setPosition(
      calculateTooltipPosition(
        rect,
        bubbleWidth,
        bubbleHeight,
        window.innerWidth,
        window.innerHeight,
      ),
    )
  }, [])

  useEffect(() => {
    if (!isVisible) return

    updatePosition()
    window.addEventListener('scroll', updatePosition, true)
    window.addEventListener('resize', updatePosition)
    return () => {
      window.removeEventListener('scroll', updatePosition, true)
      window.removeEventListener('resize', updatePosition)
    }
  }, [isVisible, updatePosition])

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
