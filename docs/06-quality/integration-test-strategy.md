# Integration Test Strategy

## Critical integration boundaries

1. Spring Security authentication + ownership.
2. JPA mapping + Flyway migration.
3. Assessment submission transaction.
4. Evidence → mastery projection.
5. Mastery/review → planner input.

## Minimum negative tests

- unauthenticated personal endpoint → 401;
- user A cannot access attempt/session of user B → 403/404 according to API convention;
- invalid state transition → 409;
- invalid input → 400 with standard error model;
- duplicate final submit does not create double evidence.

## Database

Prefer Testcontainers/MySQL for a few schema-sensitive integration tests if team can handle it. If quá nặng cho môi trường lớp học, dùng dedicated test MySQL in CI; không giả định H2 tương thích hoàn toàn với MySQL behavior.
