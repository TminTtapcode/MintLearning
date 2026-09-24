# Git Workflow

## Branches

- `main` luôn releasable hoặc gần releasable.
- Feature branches ngắn: `feat/<scope>`, `fix/<scope>`, `docs/<scope>`.

## Commit

Ưu tiên small coherent commits. Không trộn refactor diện rộng với feature behavior nếu tránh được.

## PR description

- Problem
- Solution
- Spec/ADR links
- Screenshots for UI
- Tests run
- Risks/migrations
- Acceptance checklist

## Review ownership

- Learning behavior: Learning reviewer.
- UX behavior: UX/Product reviewer.
- Architecture/security: Engineering reviewer.
- Content: Learning QA.
