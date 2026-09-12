import { describe, it, expect, vi } from 'vitest'
import { render, screen, fireEvent } from '@testing-library/react'
import { DateField } from '../components/DateField'

describe('DateField', () => {
  it('renders the label and the current value', () => {
    render(
      <DateField id="dateSaisie" label="Date de saisie" value="05/03/2024" onChange={vi.fn()} />,
    )
    expect(screen.getByLabelText('Date de saisie')).toHaveValue('05/03/2024')
  })

  it('renders empty when value is empty', () => {
    render(<DateField id="dateSaisie" label="Date de saisie" value="" onChange={vi.fn()} />)
    expect(screen.getByLabelText('Date de saisie')).toHaveValue('')
  })

  it('calls onChange with a fr-formatted date when a date is typed and applied', () => {
    const onChange = vi.fn()
    render(<DateField id="dateSaisie" label="Date de saisie" value="" onChange={onChange} />)
    const input = screen.getByLabelText('Date de saisie')
    fireEvent.change(input, { target: { value: '10/06/2024' } })
    fireEvent.keyDown(input, { key: 'Enter', code: 'Enter' })
    expect(onChange).toHaveBeenCalledWith('10/06/2024')
  })

  it('disables the input when disabled is true', () => {
    render(
      <DateField
        id="dateSaisie"
        label="Date de saisie"
        value=""
        onChange={vi.fn()}
        disabled
      />,
    )
    expect(screen.getByLabelText('Date de saisie')).toBeDisabled()
  })
})
