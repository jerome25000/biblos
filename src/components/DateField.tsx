import DatePicker, { registerLocale } from 'react-datepicker'
import { fr, enUS } from 'date-fns/locale'
import 'react-datepicker/dist/react-datepicker.css'
import { getLocale, t } from '../services/i18nService'
import { dateToFrDate, frDateToDate } from '../services/utilities'

registerLocale('fr', fr)
registerLocale('en', enUS)

interface DateFieldProps {
  id: string
  label: string
  value: string
  onChange: (value: string) => void
  disabled?: boolean
}

export function DateField({ id, label, value, onChange, disabled }: DateFieldProps) {
  return (
    <div className="form-group">
      <label htmlFor={id}>{label}</label>
      <DatePicker
        id={id}
        className="form-input"
        locale={getLocale()}
        dateFormat="dd/MM/yyyy"
        placeholderText={t('livreForm.datePlaceholder')}
        selected={frDateToDate(value)}
        onChange={(date: Date | null) => date && onChange(dateToFrDate(date))}
        disabled={disabled}
        isClearable
        showMonthDropdown
        showYearDropdown
        dropdownMode="select"
      />
    </div>
  )
}
