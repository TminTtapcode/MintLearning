---
name: release-check
description: Performs the pre-release verification checklist for staging or production including tests, migrations, smoke flows, known issues, rollback and monitoring readiness.
---

# Release Check

Follow `docs/07-devops/release-runbook.md`.

Verify:
- CI/build/test green.
- migrations reviewed.
- security checklist for changed surfaces.
- critical smoke flows.
- release notes/known issues.
- rollback path.
- monitoring/error checks.

Do not deploy production automatically unless the current project policy explicitly allows it.
