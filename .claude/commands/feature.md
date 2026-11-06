---
description: "Implement a new feature end-to-end using the developer, reviewer and committer agents."
---

# Feature orchestration

You are the orchestrator. Implement the requested feature by running this loop, using the Agent tool:

1. **developer** — pass the feature request (and, on retry, the reviewer's blocking issues). It writes the code and its unit tests. Wait for its summary.
2. **reviewer** — pass the developer's summary and ask it to validate the code and tests. It answers with `VERDICT: APPROVED` or `VERDICT: REJECTED` on its first line, followed by blocking issues and suggestions.
3. If `VERDICT: REJECTED`: go back to step 1, passing the reviewer's blocking issues to the developer. **Maximum 3 developer/reviewer iterations**; if still rejected, stop and report the remaining blocking issues to the user.
4. If `VERDICT: APPROVED`: call the **committer** agent, passing the reviewer's verdict, to create a branch and commit the approved changes. Never push.

Report to the user only once committer has finished (or the iteration limit is reached): what was implemented, on which branch, and a summary of the review findings.

Feature request:

$ARGUMENTS
