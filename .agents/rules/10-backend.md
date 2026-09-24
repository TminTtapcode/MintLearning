---
trigger: glob
description: "Backend rules for Java/Spring source and backend configuration."
globs: "backend/**, **/*.java, **/pom.xml, **/build.gradle*"
---

# Backend Rules

- Business/learning rules belong in application/domain services, not controllers.
- Controllers: auth context + validation + orchestration boundary only.
- Never trust client-provided userId for authenticated ownership.
- Persist attempts/evidence before projecting mastery state when the use case requires auditability.
- Planner/mastery functions should be deterministic/testable in v1.
- Database changes require versioned migration.
- Add tests for state transitions and authorization.
