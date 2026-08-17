import { t } from '../services/i18nService'
import { totalPages } from '../services/utilities'

interface PaginationProps {
  page: number
  count: number
  pageSize: number
  onPageChange: (page: number) => void
}

export function Pagination({
  page,
  count,
  pageSize,
  onPageChange,
}: PaginationProps) {
  const lastPage = totalPages(count, pageSize)

  return (
    <nav aria-label="pagination" className="pagination">
      <button
        type="button"
        className="btn-secondary"
        onClick={() => onPageChange(page - 1)}
        disabled={page <= 1}
      >
        {t('pagination.previous')}
      </button>
      <span>{t('pagination.pageInfo', { page, totalPages: lastPage })}</span>
      <button
        type="button"
        className="btn-secondary"
        onClick={() => onPageChange(page + 1)}
        disabled={page >= lastPage}
      >
        {t('pagination.next')}
      </button>
    </nav>
  )
}
