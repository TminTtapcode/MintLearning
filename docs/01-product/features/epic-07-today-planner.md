# EPIC-07 — Today Planner

## User outcome

Tạo buổi học phù hợp quỹ thời gian và trạng thái hiện tại.

## In scope

See `docs/01-product/feature-catalog.md` and relevant UX screen specs.

## Acceptance criteria

- **AC-01:** User can change available minutes.
- **AC-02:** Planner prioritizes resume/repair/review/new learning according to documented rules.
- **AC-03:** 10–15 minute lite session is valid.
- **AC-04:** Missing days do not generate overdue debt.
- **AC-05:** Each generated item has a reason code.

## Cross-functional checks

- Product/business rules referenced.
- Learning rule checked if learner state/content changes.
- Loading/empty/error/resume state handled where applicable.
- Ownership enforced server-side.
- Relevant analytics event added.
- Tests cover authoritative behavior.

## Out of scope

Do not expand this epic with social, payments, ML, microservices or unrelated admin tooling.
