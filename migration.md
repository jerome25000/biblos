================================================================================
PROCÉDURE DE MIGRATION DU SCHÉMA ET DES DONNÉES SUR SUPABASE
================================================================================

Ce document décrit la procédure pas-à-pas pour importer la base de données 
(schéma et données d'origine MySQL convertis pour PostgreSQL/Supabase) 
présente dans le fichier `dump.sql` (ou `supabase_dump.sql`).

--------------------------------------------------------------------------------
1. PRÉREQUIS
--------------------------------------------------------------------------------
- Un projet actif sur Supabase (https://supabase.com).
- L'accès au tableau de bord (Dashboard Supabase) ou au mot de passe de la 
  base de données PostgreSQL de votre projet.

--------------------------------------------------------------------------------
2. MÉTHODE 1 : VIA LE SQL EDITOR DU DASHBOARD SUPABASE (RECOMMANDÉ)
--------------------------------------------------------------------------------
C'est la méthode la plus simple et rapide, sans installation préalable d'outil.

Étape 1 : Connectez-vous à votre console Supabase.
Étape 2 : Sélectionnez votre projet.
Étape 3 : Dans le menu latéral de gauche, cliquez sur "SQL Editor" (icône >_).
Étape 4 : Cliquez sur le bouton "+ New query" (Nouvelle requête).
Étape 5 : 
  - Ouvrez le fichier `dump.sql` (ou `supabase_dump.sql`).
  - Copiez l'intégralité du contenu du fichier SQL.
  - Collez le contenu dans l'éditeur SQL de Supabase.
  (Alternativement, vous pouvez cliquer sur "Upload file" dans l'éditeur pour 
   charger directement le fichier `.sql`).
Étape 6 : Cliquez sur le bouton "Run" en bas à droite (ou appuyez sur Ctrl + Entrée).
Étape 7 : Vérifiez le message de confirmation "Success. No rows returned" ou 
          les informations d'exécution.

--------------------------------------------------------------------------------
3. MÉTHODE 2 : VIA PSQL (LIGNE DE COMMANDE POSTGRESQL)
--------------------------------------------------------------------------------
Si vous préférez utiliser la ligne de commande psql :

Étape 1 : Récupérez l'URI de connexion PostgreSQL dans Supabase :
  - Dashboard Supabase > Project Settings > Database > Connection string (URI).
  - Exemple d'URI : postgres://postgres.[PROJECT_REF]:[VOTRE_MOT_DE_PASSE]@db.[PROJECT_REF].supabase.co:5432/postgres

Étape 2 : Exécutez la commande suivante dans votre terminal :
  psql "postgres://postgres.[PROJECT_REF]:[VOTRE_MOT_DE_PASSE]@db.[PROJECT_REF].supabase.co:5432/postgres" -f dump.sql

--------------------------------------------------------------------------------
4. MÉTHODE 3 : VIA LE CLI SUPABASE
--------------------------------------------------------------------------------
Si Supabase CLI est installé et lié à votre projet :

  supabase db execute --file dump.sql

--------------------------------------------------------------------------------
5. VÉRIFICATIONS POST-MIGRATION ET SÉCURITÉ
--------------------------------------------------------------------------------
1. Vérification des données :
   - Rendez-vous dans le menu "Table Editor" du Dashboard Supabase.
   - Vérifiez que les tables (ex: `auteurs`, `livres_livres`, `livres_auteur`, etc.)
     contiennent bien vos enregistrements.

2. Auto-incrémentation / Séquences :
   - Le script de migration inclut automatiquement à la fin les commandes 
     `SELECT setval(...)` pour réaligner les séquences `IDENTITY` sur le maximum 
     des IDs déjà insérés. Les futures insertions d'enregistrements fonctionneront 
     sans conflit d'ID.

3. Gestion de Row Level Security (RLS) & Permissions :
   - Le script octroie par défaut les autorisations standard (`GRANT ALL ON ALL TABLES...`) 
     pour les rôles Supabase (`anon`, `authenticated`, `service_role`).
   - Si vous souhaitez activer RLS sur certaines tables pour restreindre l'accès 
     via l'API REST de Supabase, vous pourrez le faire depuis "Authentication" > "Policies" 
     ou via la commande SQL : `ALTER TABLE "nom_table" ENABLE ROW LEVEL SECURITY;`.
