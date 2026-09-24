# Release Runbook

## Pre-release

- Definition of Done satisfied.
- CI green.
- Migration reviewed/backed up strategy known.
- Staging acceptance passed.
- Known issues documented.

## Release

1. Tag/version.
2. Apply safe migrations.
3. Deploy backend/frontend.
4. Smoke auth + Today + learning unit + assessment flow.
5. Check logs/errors.

## Rollback

- App rollback procedure documented per hosting provider.
- DB migrations must prefer backward-compatible expand/contract patterns where feasible.

## Post-release

- Monitor errors/latency.
- Review key product events.
- Record incident/regression immediately.
