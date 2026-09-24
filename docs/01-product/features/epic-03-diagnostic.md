# EPIC-03 — Diagnostic

## User outcome

Đánh giá nhanh kiến thức để tránh dạy lại phần đã biết.

## In scope

See `docs/01-product/feature-catalog.md` and relevant UX screen specs.

## Acceptance criteria

- **AC-01:** User can skip diagnostic.
- **AC-02:** Questions map to one or more concepts.
- **AC-03:** Completion creates initial evidence/state without marking broad unrelated concepts mastered.
- **AC-04:** Result summary shows known/needs review/unknown, not pass/fail.

## Cross-functional checks

- Product/business rules referenced.
- Learning rule checked if learner state/content changes.
- Loading/empty/error/resume state handled where applicable.
- Ownership enforced server-side.
- Relevant analytics event added.
- Tests cover authoritative behavior.

## Out of scope

Do not expand this epic with social, payments, ML, microservices or unrelated admin tooling.
