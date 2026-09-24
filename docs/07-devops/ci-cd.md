# CI/CD Baseline

## Pull request CI

Frontend:
- install lockfile dependencies
- lint
- typecheck
- test
- build

Backend:
- compile
- unit/integration tests
- static checks if configured

Cross-cutting:
- migration validation
- secret/dependency scan when available

## Main branch

- build artifacts/images
- deploy staging
- smoke test

## Production

Manual approval initially, then deploy + migration + smoke + monitoring.

No auto-production deploy until rollback and migration safety are proven.
