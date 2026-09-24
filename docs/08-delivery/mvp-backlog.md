# MVP Backlog — Vertical Epics

Backlog order follows dependency and user value. Each epic has a product spec in `docs/01-product/features/`.

## Foundation — Phase 4

- Repo scaffold.
- MySQL + Flyway.
- Auth/current user.
- React app shell.
- CI.

Not a user-facing epic, but required before Phase 5.

## EPIC-01 Explore & Goal
Spec: `features/epic-01-explore-goal.md`
- architecture map
- Backend detail/data flow
- choose Backend Java goal

## EPIC-02 Curriculum Graph & Roadmap
Spec: `features/epic-02-roadmap.md`
- YAML curriculum seed/import
- concept/prerequisite API
- roadmap visualization
- preview future concepts

## EPIC-03 Diagnostic
Spec: `features/epic-03-diagnostic.md`
- question mapping
- diagnostic/skip
- initial learner-state estimate

## EPIC-04 Learning Workspace
Spec: `features/epic-04-learning-workspace.md`
- unit API/UI
- resource focus
- worked example
- guided/independent practice entry
- resume

## EPIC-05 Practice & Assessment
Spec: `features/epic-05-assessment.md`
- attempts
- answer feedback
- learning evidence
- remediation signal

## EPIC-06 Mastery & Review
Spec: `features/epic-06-mastery-review.md`
- deterministic mastery projection
- review scheduler
- Review tab

## EPIC-07 Today Planner
Spec: `features/epic-07-today-planner.md`
- time budget
- session generation
- lite session
- missed-day rebalancing

## EPIC-08 Progress & Recovery
Spec: `features/epic-08-progress.md`
- concept-state summary
- strong/learning/reinforcement/review due
- links back to learning/review

## Operations across epics

Security tests, analytics, content validation, CI and docs are part of Definition of Done, not a separate “do later” phase.
