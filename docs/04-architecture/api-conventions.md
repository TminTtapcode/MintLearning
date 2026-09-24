# API Conventions

## Base

REST/JSON under `/api/v1`.

## Naming

- plural nouns where practical: `/learning-units`, `/assessments`.
- action endpoints only when behavior is not natural CRUD: `/today/regenerate`, `/assessment-attempts/{id}/submit`.
- JSON fields camelCase.

## Response rules

- Use DTOs, not JPA entities.
- Timestamps are ISO-8601; backend stores/compares instants consistently and UI formats for user locale/timezone.
- Error shape follows `api-error-model.md`.
- Pagination only where collection can realistically become large; do not add pagination boilerplate to tiny MVP lists.

## Security

- Authenticated identity comes from Spring Security context.
- Personal endpoints do not trust client-provided userId.
- Authorization checked before returning object data.

## Writes/state transitions

- Validate request DTO.
- Use transaction for operations that must be atomic, e.g. final assessment submit → attempts/evidence/state update.
- Prevent duplicate final submit using status/transaction constraints rather than a distributed idempotency system.

## Compatibility

Frontend and backend live in one monorepo, so contract changes are delivered in one vertical slice. Do not silently rename/remove fields without updating tests/client/spec.
