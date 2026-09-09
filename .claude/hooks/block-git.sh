#!/bin/bash
# Hook to block all git commands - enforces the "no git" rule from .claude/rules/preferences.md

# Read the hook input JSON from stdin
hook_input=$(cat)

# Extract the command from the JSON using jq
command=$(echo "$hook_input" | jq -r '.tool_input.command // empty')

if [ -z "$command" ]; then
  exit 0
fi

# Check if the command contains "git" as a standalone command
# This regex matches git at the start of a command or after shell operators (&&, ;, |, etc.)
if echo "$command" | grep -qE '(^|[[:space:]&|;]|\s)git([[:space:]$&|;]|$)'; then
  echo "❌ Git commands are not allowed per .claude/rules/preferences.md (no git rule)" >&2
  echo "The 'no git' rule is enforced at the harness level to prevent accidental git operations." >&2
  exit 2
fi

exit 0
