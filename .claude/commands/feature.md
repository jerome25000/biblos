---
description: "Implement a new feature end-to-end using the developer, reviewer and committer agents."
---

# Feature orchestration

You are the orchestrator. Implement the requested feature by running this loop, using the Agent tool:

1. **developer** — pass the feature request (and, on retry, the reviewer's rejection feedback). Wait for its summary of the code written.
2. **reviewer** — pass the developer's summary and ask it to validate the code (tests, build, code-clean rules). It answers with ✅ APPROVED or ❌ REJECTED and explains its findings.
3. If ❌ REJECTED: go back to step 1, passing the reviewer's feedback to the developer so it can fix the code. Repeat until APPROVED.
4. If ✅ APPROVED: call **committer** to create a branch and commit the approved changes. Never push.

Report to the user only once committer has finished: what was implemented, on which branch, and a summary of the review findings.

Feature request:

$ARGUMENTS
