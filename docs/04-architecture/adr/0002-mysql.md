# ADR-0002 — Use MySQL as Primary Relational Database

**Status:** Accepted

## Context

Domain có nhiều quan hệ ổn định: concepts, prerequisites, units, attempts, learner state, schedules.

## Decision

MySQL là primary database cho MVP. MySQL Workbench dùng như local/admin client khi cần.

## Consequences

- Dùng migration versioned.
- Model relationship/constraints rõ.
- Không gọi Workbench là database trong docs/code.
