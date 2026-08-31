import { describe, it, expect } from 'vitest'
import { render, screen, fireEvent } from '@testing-library/react'
import { Tooltip } from '../components/Tooltip'

describe('Tooltip', () => {
  it('renders children without tooltip when text is empty', () => {
    render(
      <Tooltip text="">
        <button>Hover me</button>
      </Tooltip>
    )
    expect(screen.getByRole('button')).toBeInTheDocument()
    expect(screen.queryByText('Hover me')).toBeInTheDocument()
    expect(document.querySelector('.tooltip-wrapper')).not.toBeInTheDocument()
  })

  it('renders children without tooltip when text is null', () => {
    render(
      <Tooltip text={null}>
        <span>Label</span>
      </Tooltip>
    )
    expect(screen.getByText('Label')).toBeInTheDocument()
  })

  it('renders tooltip bubble with full text when hovering', () => {
    const fullText = 'This is the full description text'
    render(
      <Tooltip text={fullText}>
        <span>Label</span>
      </Tooltip>
    )
    expect(screen.getByText('Label')).toBeInTheDocument()

    const wrapper = screen.getByText('Label').closest('.tooltip-wrapper')
    expect(wrapper).toBeInTheDocument()

    fireEvent.mouseEnter(wrapper!)
    expect(screen.getByText(fullText)).toBeInTheDocument()
  })

  it('hides tooltip on mouse leave', () => {
    const fullText = 'This is the full description text'
    render(
      <Tooltip text={fullText}>
        <span>Label</span>
      </Tooltip>
    )

    const wrapper = screen.getByText('Label').closest('.tooltip-wrapper')
    fireEvent.mouseEnter(wrapper!)
    expect(screen.getByText(fullText)).toBeInTheDocument()

    fireEvent.mouseLeave(wrapper!)
    expect(screen.queryByText(fullText)).not.toBeInTheDocument()
  })

  it('wraps children in tooltip-wrapper when text is provided', () => {
    render(
      <Tooltip text="Tooltip text">
        <span>Label</span>
      </Tooltip>
    )
    const wrapper = screen.getByText('Label').closest('.tooltip-wrapper')
    expect(wrapper).toBeInTheDocument()
  })
})
