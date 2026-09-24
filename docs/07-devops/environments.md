# Environments

## Local

- Frontend dev server
- Spring Boot local
- MySQL local/container
- MySQL Workbench optional client

## Test/CI

Ephemeral/test database or isolated schema. Deterministic seed fixtures.

## Staging

Production-like configuration, non-production data. Used for E2E/product acceptance.

## Production

Separate secrets/data, migration gate, monitoring, rollback procedure.

## Config rule

Environment-specific values via configuration/env vars; code không branch theo “if production host name”.
