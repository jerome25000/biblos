# Guest Mode Implementation Guide

## Overview
This document guides you through the deployment of the read-only "Guest" user feature for Biblos. The implementation is complete at both the client (React) and database (Supabase RLS) levels.

## What Was Implemented

### 1. Client-Side (React/TypeScript)

#### Auth Context & Hook
- **File**: `src/contexts/AuthContext.tsx`
- Manages user session and exposes `isGuest` flag derived from `auth.user.app_metadata.role`
- Wraps the entire app to propagate auth state without prop-drilling

#### Constants
- **File**: `src/constants.ts`
- Added `GUEST_ROLE = 'guest'` constant

#### i18n Translations
- **File**: `src/services/i18nService.ts`
- Added French/English labels:
  - `guest.readOnlyBadge`: "Lecture seule" / "Read-only"
  - `guest.readOnlyTooltip`: "Action non disponible en mode invité" / "Action unavailable in guest mode"

#### UI Disabling
The following components prevent guest users from creating, editing, or deleting:
- **`LivresList.tsx`**: "Add book" button, per-row "Edit book" icon buttons
- **`BookCard.tsx`**: Card click-to-edit disabled for guests
- **`AuteursList.tsx`**: "Add author" button, per-row "Edit" and "Delete" buttons
- **`EditeursList.tsx`**: "Add publisher" button, per-row "Edit" and "Delete" buttons

Each disabled button shows a tooltip when hovered: "Action unavailable in guest mode"

#### Badge in Header
- **File**: `src/App.tsx`
- A small "Lecture seule" / "Read-only" badge appears next to the user email in the header when logged in as a guest, making the mode visually obvious.

#### Styling
- **File**: `src/index.css`
- Added `.guest-badge` styling for the read-only indicator

### 2. Database (PostgreSQL / Supabase RLS)

#### Helper Function
- **File**: `bdd/schema.sql`
- Added SQL function `is_guest()` that checks if the current user's JWT has `app_metadata.role = 'guest'`

#### Row-Level Security (RLS) Policies
All 7 tables now have 4-part policies (instead of 1 generic "allow all" policy):
1. **SELECT**: Allowed for all authenticated users (guests can read)
2. **INSERT**: Blocked for guests (`WITH CHECK (NOT is_guest())`)
3. **UPDATE**: Blocked for guests (`USING (NOT is_guest()) WITH CHECK (NOT is_guest())`)
4. **DELETE**: Blocked for guests (`USING (NOT is_guest())`)

Tables affected:
- `livres_livres` (books)
- `livres_auteur` (authors)
- `livres_editeur` (publishers)
- `livres_genre` (genres)
- `livres_pays` (countries)
- `livres_illustrateur` (illustrators)
- `livres_typelivre` (book types)

### 3. Tests

#### New Test Suite
- **File**: `src/__tests__/useAuth.test.ts` — Tests for guest role detection logic

#### Updated Test Suites
- **`LivresList.test.tsx`**: Added tests for disabled "add" and "edit" buttons in guest mode
- **`BookCard.test.tsx`**: Added tests for disabled card click and prevented onEdit callback in guest mode
- **`AuteursList.test.tsx`**: Mocked AuthContext to allow existing tests to pass
- **`EditeursList.test.tsx`**: Mocked AuthContext to allow existing tests to pass

All 210 unit tests pass ✅

---

## Deployment Steps

### Step 1: Deploy React Code (Automatic)
The client code is ready to deploy. Simply run your standard deployment process (CI/CD, git push to main, etc.). The app will:
- Display the header badge and disabled buttons when a guest logs in
- Block modal opens and form submissions at the client level

### Step 2: Update Supabase Database (Manual)

You **must** apply the RLS policy changes to your Supabase instance. This step is **critical** to prevent guest users from bypassing the UI and modifying data via direct API calls.

#### Option A: Using Supabase Dashboard SQL Editor

1. Go to **Supabase Dashboard** → Your Project
2. Navigate to **SQL Editor**
3. Create a new query and paste the SQL from `bdd/schema.sql` lines 107–168 (the section starting with `CREATE OR REPLACE FUNCTION is_guest()` through the final `CREATE POLICY "Block DELETE for guests" ON "livres_typelivre"...`)
4. Click **Run**

#### Option B: Using Supabase CLI

```bash
# If you have the Supabase CLI installed:
supabase db push
# (assuming you have migrations set up; currently you don't, so use Option A)
```

**⚠️ Important:** Ensure you run this against the correct Supabase project (production vs. development).

### Step 3: Create a Guest User (Manual)

After the RLS policies are in place, create a test guest account in Supabase Auth:

1. Go to **Supabase Dashboard** → **Authentication** → **Users**
2. Click **Create a new user**
3. Enter an email (e.g., `guest@example.com`) and a password
4. **Important**: Click the newly created user row, then **Edit**
5. Scroll down to **Raw App Metadata**
6. Paste the following JSON:
   ```json
   {
     "role": "guest"
   }
   ```
7. Click **Save**

### Step 4: Test the Guest Mode (Manual)

1. Log out of the admin account
2. Log in with the guest email and password
3. Verify:
   - ✅ The "Lecture seule" / "Read-only" badge appears next to the email in the header
   - ✅ You can see all books, authors, and publishers (read access works)
   - ✅ The "Add book", "Edit book", "Add author", "Delete author", etc. buttons are disabled with a tooltip
   - ✅ Clicking a disabled button does nothing
   - ✅ (Advanced) Try opening browser dev console and calling the API directly:
     ```javascript
     // This should fail with a 403 Forbidden (RLS policy violation):
     supabase.from('livres_livres').insert({ titre: 'Test', /* ... */ })
     ```

### Step 5: Reset Testing

When you're done testing, you can delete the test guest user from Supabase Auth.

---

## Architecture Notes

### Why Both Client and Database Protection?

- **Client-side** (disabled buttons, hidden modals) provides a good UX and prevents accidental submissions
- **Database-level** (RLS policies) is the security boundary — prevents anyone (including technical guests or API callers) from bypassing the UI

Both layers together ensure defense-in-depth.

### How the Guest Role is Determined

1. **Supabase Auth** stores the role in the user's `raw_app_metadata` (server-side only, set via admin API or dashboard)
2. When the user logs in, this metadata is encoded into their **JWT token** in the `app_metadata` claim
3. The **React app** reads `session.user.app_metadata.role` from the client-side session object
4. The **RLS policies** read the role from `auth.jwt() -> 'app_metadata' ->> 'role'` during database queries

### What Happens When a Guest User Logs In?

1. User logs in with email/password
2. Supabase Auth returns a session with JWT containing `app_metadata.role = 'guest'`
3. React's `AuthContext` compares this value with `GUEST_ROLE` constant
4. `isGuest` becomes `true`
5. UI elements (buttons, modals, etc.) respond to `isGuest` and disable themselves
6. If a guest somehow triggers a database mutation (e.g., via direct API call), RLS policies block it with a 403 error

---

## Troubleshooting

### "After deploying the policies, guest users can still edit data via the API"

**Cause**: RLS policies might not have been applied correctly.

**Fix**:
1. In Supabase Dashboard, go to **SQL Editor**
2. Check that all 7 tables show the new policies:
   ```sql
   SELECT tablename, policyname FROM pg_policies WHERE tablename LIKE 'livres_%' ORDER BY tablename;
   ```
3. If the old "No public access" policies still exist, drop them first and re-run the new policies

### "Guest users see the header badge but buttons are still enabled"

**Cause**: The mock in tests may not reflect the production code, or the build hasn't been re-deployed.

**Fix**:
1. Verify `useAuth()` is being called in the component
2. Rebuild/redeploy the React app
3. Hard-refresh the browser (Ctrl+Shift+R or Cmd+Shift+R)

### "RLS policy query errors when testing"

**Cause**: The `is_guest()` function may not exist, or JWT parsing is failing.

**Fix**:
1. Verify the function was created:
   ```sql
   SELECT proname FROM pg_proc WHERE proname = 'is_guest';
   ```
2. Test the function manually in SQL Editor:
   ```sql
   SELECT is_guest();
   ```
   (This will return false if you're logged in as an admin, which is correct)

---

## Future Enhancements

Possible extensions to this implementation:

1. **Finer-grained permissions**: Instead of just guest/normal, add roles like `viewer`, `editor`, `admin`
2. **Per-user data** (if applicable): Use `auth.uid()` in RLS policies to filter data by owner
3. **Audit logging**: Track who reads/creates/modifies which records
4. **Granular feature toggles**: Different sections (books, authors) with different read/write rules per role

---

## Files Changed

### Created
- `src/contexts/AuthContext.tsx` — Auth provider and hook
- `src/__tests__/useAuth.test.ts` — Tests for guest role logic

### Modified
- `src/constants.ts` — Added `GUEST_ROLE` constant
- `src/services/i18nService.ts` — Added French and English i18n keys for guest mode
- `src/App.tsx` — Wrapped with `AuthProvider`, added header badge
- `src/components/LivresList.tsx` — Disabled add and edit buttons for guests
- `src/components/BookCard.tsx` — Disabled card click for guests
- `src/components/AuteursList.tsx` — Disabled add, edit, delete buttons for guests
- `src/components/EditeursList.tsx` — Disabled add, edit, delete buttons for guests
- `src/index.css` — Added `.guest-badge` styling
- `bdd/schema.sql` — Updated RLS policies and added `is_guest()` function
- `src/__tests__/LivresList.test.tsx` — Added guest-mode tests and AuthContext mock
- `src/__tests__/BookCard.test.tsx` — Added guest-mode tests and AuthContext mock
- `src/__tests__/AuteursList.test.tsx` — Added AuthContext mock
- `src/__tests__/EditeursList.test.tsx` — Added AuthContext mock

---

## Questions?

For questions or issues, refer to:
- **Supabase RLS Docs**: https://supabase.com/docs/guides/auth/row-level-security
- **JWT Claims in Supabase**: https://supabase.com/docs/guides/auth#custom-claims
- **React Context**: https://react.dev/reference/react/useContext
