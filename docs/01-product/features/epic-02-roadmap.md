# EPIC-02 — Curriculum Graph & Roadmap

## User outcome

Người học nhìn thấy đường đi và lý do prerequisite.

## In scope

See `docs/01-product/feature-catalog.md` and relevant UX screen specs.

## Acceptance criteria

- **AC-01:** Roadmap reads concepts from curriculum data, not hard-coded React order.
- **AC-02:** Each concept shows state and prerequisite links.
- **AC-03:** Future concepts may be previewed.
- **AC-04:** Unknown/weak prerequisite is explained, not used as hard navigation lock.

## Cross-functional checks

- Product/business rules referenced.
- Learning rule checked if learner state/content changes.
- Loading/empty/error/resume state handled where applicable.
- Ownership enforced server-side.
- Relevant analytics event added.
- Tests cover authoritative behavior.

## Out of scope

Do not expand this epic with social, payments, ML, microservices or unrelated admin tooling.
