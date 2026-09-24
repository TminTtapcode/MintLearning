---
name: review-feature
description: Audits an implemented feature against product requirements, learning rules, UX states, security, tests and Definition of Done. Use for code review or pre-merge verification.
---

# Review Feature

Review in this order:

1. Requirement/acceptance match and simplicity guardrail.
2. Product invariants.
3. Learning correctness/side effects.
4. UX states and accessibility.
5. Authorization/data ownership.
6. Architecture/module boundaries.
7. Test quality and missing regressions.
8. Docs/ADR drift.

Classify findings: BLOCKER / HIGH / MEDIUM / LOW. Findings must cite concrete file/behavior and expected rule.
