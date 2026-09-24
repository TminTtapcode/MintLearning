# Antigravity Agent Instructions

You are working on **IT Learning Platform**, a student-built EdTech product. The goal is a complete learning loop with code the team can still understand and defend.

Before meaningful work, read `PROJECT_CONTEXT.md` and `docs/00-governance/docs-index.md`.

## Source-of-truth order

1. `docs/00-governance/source-of-truth.md`
2. Accepted ADRs in `docs/04-architecture/adr/`
3. `docs/01-product/prd.md`, `business-rules.md`, feature specs
4. `docs/02-learning/` and `curriculum/backend-java/`
5. `docs/03-ux/`
6. `docs/04-architecture/`, `docs/06-quality/`, `docs/07-devops/`
7. Approved task-specific plan

Do not turn assumptions into requirements. Record unresolved cross-domain choices instead of inventing behavior.

## Required loop

`Understand → locate spec → plan → implement smallest vertical slice → test → verify acceptance criteria → update docs if behavior changed`.

## Product invariants

- Do not turn the app into a todo/streak product.
- No overdue debt after missed days.
- Prerequisites guide sequencing but do not block preview.
- `completed` never means `STRONG` by itself.
- Learning unit = objective + resource focus + example + practice + assessment/evidence + review intent.
- AI is not curriculum/security authority.
- MVP content is Backend Java Foundation only.

## Student-friendly engineering invariants

Read `docs/00-governance/simplicity-guardrails.md`.

- One React frontend + one Spring Boot backend + one MySQL DB.
- Modular monolith; no microservices without new ADR.
- No Redis/Kafka/Elasticsearch/Kubernetes/graph DB by default.
- No arbitrary server-side code execution sandbox in MVP.
- Rule-based mastery/planner before ML.
- Do not create abstraction/interface layers without a concrete need.
- Business/learning rules stay server-side in services, not hidden in React.
- DB changes use Flyway migrations.

## Feature reading matrix

Before implementing an epic, read:
- `docs/01-product/features/<epic>.md`
- relevant `docs/03-ux/screens/*.md`
- relevant learning docs if learner state/content changes
- `docs/04-architecture/api-catalog.md` and `database-schema.md`
- `docs/06-quality/learning-flow-tests.md` for learning behavior

## Before coding

1. State user outcome.
2. Locate acceptance criteria.
3. Identify business/learning rules.
4. Identify screen states/API/data affected.
5. Check authorization/ownership.
6. Check whether a simpler implementation already satisfies the requirement.
7. Then code.

## After coding

- Run relevant tests/build.
- Verify loading/empty/error/resume states.
- Verify negative authorization when user-owned data is touched.
- Verify mastery/review/planner side effects for learning features.
- Compare with `docs/08-delivery/definition-of-done.md`.
- Never report a phase closed from documentation alone when exit criteria require user testing or running implementation.
