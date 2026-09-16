#!/bin/bash
# Hook to enforce the "git" rule from .claude/rules/preferences.md:
# only branch creation and commit are allowed; push is always blocked.

# Read the hook input JSON from stdin
hook_input=$(cat)

# Extract the command from the JSON using jq
command=$(echo "$hook_input" | jq -r '.tool_input.command // empty')

if [ -z "$command" ]; then
  exit 0
fi

# Not a git command at all: let it through
if ! echo "$command" | grep -qE '(^|[[:space:]&|;])git([[:space:]$&|;]|$)'; then
  exit 0
fi

# Always block pushing, no matter the rest of the rule
if echo "$command" | grep -qE 'git[[:space:]]+push'; then
  echo "❌ 'git push' is not allowed per .claude/rules/preferences.md (git rule: never push)" >&2
  exit 2
fi

# Block other destructive/history-rewriting operations
if echo "$command" | grep -qE 'git[[:space:]]+(reset[[:space:]]+--hard|clean[[:space:]]+-[a-z]*f|branch[[:space:]]+-[dD]|rebase|filter-branch|push[[:space:]]+--force)'; then
  echo "❌ This git command is destructive and not allowed per .claude/rules/preferences.md" >&2
  exit 2
fi

# Allow only the operations the committer agent needs: create a branch, stage and commit
if echo "$command" | grep -qE 'git[[:space:]]+(checkout[[:space:]]+-b|switch[[:space:]]+-c|add|commit|status|diff|log|branch([[:space:]]|$))'; then
  exit 0
fi

echo "❌ Git command not allowed per .claude/rules/preferences.md (only branch creation, add, commit, status/diff/log allowed; never push)" >&2
exit 2
