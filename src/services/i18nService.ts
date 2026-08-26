export type Locale = 'fr' | 'en'

const translations = {
  fr: {
    'login.title': 'Connexion',
    'login.email': 'Email',
    'login.password': 'Mot de passe',
    'login.submit': 'Se connecter',
    'login.error': 'Email ou mot de passe incorrect',
    'login.loading': 'Connexion en cours...',
    'app.title': 'Biblos',
    'app.loading': 'Chargement...',
    'app.logout': 'Se déconnecter',
    'app.export': 'Exporter',
    'app.exporting': 'Exportation en cours...',
    'livres.title': 'Mes livres',
    'livres.column.titre': 'Titre',
    'livres.column.titreVo': 'Titre original',
    'livres.column.dateDebutLecture': 'Début de lecture',
    'livres.column.dateFinLecture': 'Fin de lecture',
    'livres.column.note': 'Note',
    'livres.column.serie': 'Série',
    'livres.empty': 'Aucun livre trouvé',
    'livres.loading': 'Chargement des livres...',
    'livres.error': 'Erreur lors du chargement des livres',
    'livres.add': 'Ajouter un livre',
    'livres.edit': 'Modifier le livre',
    'pagination.previous': 'Précédent',
    'pagination.next': 'Suivant',
    'pagination.pageInfo': 'Page {page} sur {totalPages}',
    'livreForm.title.create': 'Nouveau livre',
    'livreForm.title.edit': 'Modifier le livre',
    'livreForm.field.numEdition': "Numéro d'édition",
    'livreForm.field.editeur': 'Éditeur',
    'livreForm.field.anneePremiereEdition': "Année de 1ère édition",
    'livreForm.field.titre': 'Titre',
    'livreForm.field.titreVo': 'Titre original',
    'livreForm.field.serie': 'Série',
    'livreForm.field.numSerie': 'N° dans la série',
    'livreForm.field.description': 'Description',
    'livreForm.field.commentaires': 'Commentaires',
    'livreForm.field.genre': 'Genre',
    'livreForm.field.typeLivre': 'Type de livre',
    'livreForm.field.dateSaisie': 'Date de saisie',
    'livreForm.field.collection': 'Fait partie d’une collection',
    'livreForm.field.dateDebutLecture': 'Date de début de lecture',
    'livreForm.field.dateFinLecture': 'Date de fin de lecture',
    'livreForm.field.note': 'Note',
    'livreForm.field.auteur': 'Auteur',
    'livreForm.select.empty': '—',
    'livreForm.datePlaceholder': 'JJ/MM/AAAA',
    'livreForm.dateInvalid': 'Date invalide, format attendu JJ/MM/AAAA',
    'livreForm.save': 'Enregistrer',
    'livreForm.cancel': 'Annuler',
    'livreForm.saving': 'Enregistrement...',
    'livreForm.error': "Erreur lors de l'enregistrement du livre",
    'livreForm.close': 'Fermer',
  },
  en: {
    'login.title': 'Login',
    'login.email': 'Email',
    'login.password': 'Password',
    'login.submit': 'Sign in',
    'login.error': 'Incorrect email or password',
    'login.loading': 'Signing in...',
    'app.title': 'Biblos',
    'app.loading': 'Loading...',
    'app.logout': 'Sign out',
    'app.export': 'Export',
    'app.exporting': 'Exporting...',
    'livres.title': 'My books',
    'livres.column.titre': 'Title',
    'livres.column.titreVo': 'Original title',
    'livres.column.dateDebutLecture': 'Reading start',
    'livres.column.dateFinLecture': 'Reading end',
    'livres.column.note': 'Rating',
    'livres.column.serie': 'Series',
    'livres.empty': 'No books found',
    'livres.loading': 'Loading books...',
    'livres.error': 'Error loading books',
    'livres.add': 'Add a book',
    'livres.edit': 'Edit book',
    'pagination.previous': 'Previous',
    'pagination.next': 'Next',
    'pagination.pageInfo': 'Page {page} of {totalPages}',
    'livreForm.title.create': 'New book',
    'livreForm.title.edit': 'Edit book',
    'livreForm.field.numEdition': 'Edition number',
    'livreForm.field.editeur': 'Publisher',
    'livreForm.field.anneePremiereEdition': 'First edition year',
    'livreForm.field.titre': 'Title',
    'livreForm.field.titreVo': 'Original title',
    'livreForm.field.serie': 'Series',
    'livreForm.field.numSerie': 'Series number',
    'livreForm.field.description': 'Description',
    'livreForm.field.commentaires': 'Comments',
    'livreForm.field.genre': 'Genre',
    'livreForm.field.typeLivre': 'Book type',
    'livreForm.field.dateSaisie': 'Entry date',
    'livreForm.field.collection': 'Part of a collection',
    'livreForm.field.dateDebutLecture': 'Reading start date',
    'livreForm.field.dateFinLecture': 'Reading end date',
    'livreForm.field.note': 'Rating',
    'livreForm.field.auteur': 'Author',
    'livreForm.select.empty': '—',
    'livreForm.datePlaceholder': 'DD/MM/YYYY',
    'livreForm.dateInvalid': 'Invalid date, expected format DD/MM/YYYY',
    'livreForm.save': 'Save',
    'livreForm.cancel': 'Cancel',
    'livreForm.saving': 'Saving...',
    'livreForm.error': 'Error saving the book',
    'livreForm.close': 'Close',
  },
} as const satisfies Record<Locale, Record<string, string>>

export type TranslationKey = keyof (typeof translations)['fr']

let currentLocale: Locale = 'fr'

export function setLocale(locale: Locale): void {
  currentLocale = locale
}

export function getLocale(): Locale {
  return currentLocale
}

export function t(
  key: TranslationKey,
  params?: Record<string, string | number>,
): string {
  const template: string = translations[currentLocale][key]
  if (!params) return template
  return Object.entries(params).reduce(
    (result: string, [paramKey, value]) =>
      result.replace(`{${paramKey}}`, String(value)),
    template,
  )
}
