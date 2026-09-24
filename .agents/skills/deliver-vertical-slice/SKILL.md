---
name: deliver-vertical-slice
description: Implements one approved end-to-end feature slice across frontend/backend/tests while preserving product and learning rules. Use when a feature plan and acceptance criteria already exist.
---

# Deliver Vertical Slice

1. Locate approved feature/acceptance criteria.
2. Implement backend behavior and tests first when it owns authoritative rules.
3. Implement API contract and client integration.
4. Implement UI states including loading/error/empty/resume as applicable.
5. Add security negative tests when user data is involved.
6. Verify mastery/review/planner side effects for learning features.
7. Run relevant build/tests.
8. Compare against `docs/08-delivery/definition-of-done.md`.
9. Update docs only when actual behavior/decision changed.
10. Report incomplete criteria explicitly; never claim Done from code compilation alone.
