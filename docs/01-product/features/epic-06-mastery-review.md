# EPIC-06 — Mastery & Review

## User outcome

Biến evidence thành learner state và lịch review có thể giải thích.

## In scope

See `docs/01-product/feature-catalog.md` and relevant UX screen specs.

## Acceptance criteria

- **AC-01:** Mastery uses versioned deterministic heuristic.
- **AC-02:** Review due does not hard-block new learning.
- **AC-03:** Correct delayed retrieval generally lengthens interval; incorrect shortens it.
- **AC-04:** History is retained; current state is projection.

## Cross-functional checks

- Product/business rules referenced.
- Learning rule checked if learner state/content changes.
- Loading/empty/error/resume state handled where applicable.
- Ownership enforced server-side.
- Relevant analytics event added.
- Tests cover authoritative behavior.

## Out of scope

Do not expand this epic with social, payments, ML, microservices or unrelated admin tooling.
