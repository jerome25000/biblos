import { describe, expect, it, vi, beforeEach } from 'vitest'
import { render, screen, fireEvent, waitFor } from '@testing-library/react'

const signInMock = vi.fn()

vi.mock('../services/authService', () => ({
  signIn: signInMock,
}))

const { Login } = await import('../components/Login')

describe('Login', () => {
  beforeEach(() => {
    signInMock.mockReset()
  })

  it('submits the entered email and password', async () => {
    signInMock.mockResolvedValue(undefined)

    render(<Login />)
    fireEvent.change(screen.getByLabelText('Email'), {
      target: { value: 'jerome@example.com' },
    })
    fireEvent.change(screen.getByLabelText('Mot de passe'), {
      target: { value: 'secret' },
    })
    fireEvent.click(screen.getByText('Se connecter'))

    await waitFor(() =>
      expect(signInMock).toHaveBeenCalledWith('jerome@example.com', 'secret'),
    )
  })

  it('shows an error message when sign in fails', async () => {
    signInMock.mockRejectedValue(new Error('bad credentials'))

    render(<Login />)
    fireEvent.change(screen.getByLabelText('Email'), {
      target: { value: 'jerome@example.com' },
    })
    fireEvent.change(screen.getByLabelText('Mot de passe'), {
      target: { value: 'wrong' },
    })
    fireEvent.click(screen.getByText('Se connecter'))

    expect(await screen.findByRole('alert')).toHaveTextContent(
      'Email ou mot de passe incorrect',
    )
  })
})
