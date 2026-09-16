# Biblos

Biblos est une application personnelle de gestion de bibliothèque : elle permet de cataloguer, suivre et consulter l'ensemble de sa collection de livres.

## Fonctionnalités

### Gestion des livres
- Ajout, modification et suppression de livres avec leurs informations : titre (et titre en langue originale), édition, année de première parution, genre, type d'ouvrage, série et numéro dans la série.
- Association à un auteur, un illustrateur et un éditeur.
- Suivi de la lecture : dates de début et de fin de lecture, note, commentaires et description.
- Champs additionnels : image de couverture, dédicace, indication d'appartenance à une collection.
- Recherche et pagination dans le catalogue.

### Auteurs et illustrateurs
- Fiches dédiées avec nom, prénom, année de naissance et nationalité.
- Recherche rapide lors de l'ajout ou de la modification d'un livre.

### Éditeurs
- Gestion des maisons d'édition (nom, adresse) associées aux livres.

### Emprunts
- Suivi des livres actuellement prêtés à un tiers (nom de l'emprunteur), avec possibilité de modifier un livre directement depuis cette vue.

### Statistiques
- Nombre de livres lus par année, des plus récentes aux plus anciennes.
- Classement des 10 auteurs les plus lus.

### Autres
- Authentification pour protéger l'accès à la bibliothèque.
- Interface disponible en français et en anglais.

## Données

La bibliothèque est stockée dans une base de données en ligne (Supabase), ce qui permet d'accéder à sa collection depuis n'importe où.
