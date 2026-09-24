# Implementation Roadmap — Student-friendly

## Stage A — Close documentation foundation

- PRD/business rules/feature catalog.
- Backend Java graph seed.
- UX screen specs/wireframes.
- DB/API/auth design.
- Phase exit checklists.

## Stage B — Phase 4 bootstrap

1. Create monorepo app folders.
2. Start MySQL with Docker Compose.
3. Spring Boot scaffold + Flyway.
4. React scaffold + routing/app shell.
5. Register/login/current user.
6. CI build/test.

Do not build planner yet.

## Stage C — Vertical slices

### Slice 1 — Explore + Goal
Frontend map/detail → goal API → user goal persisted.

### Slice 2 — Curriculum Graph + Roadmap
YAML seed/import → concept API → roadmap display.

### Slice 3 — Diagnostic
Question subset → submit → initial UserConceptState.

### Slice 4 — Learning Workspace
One HTTP learning unit end-to-end.

### Slice 5 — Assessment + Evidence
Submit answers → evidence history → feedback.

### Slice 6 — Mastery + Review
Deterministic projection → due review → retrieval submit.

### Slice 7 — Today Planner
Time budget → review/current/new item selection → resume/rebalance.

### Slice 8 — Progress
Group concept states and show recovery/strong/learning.

## Stage D — Alpha

Prototype/product usability + real app testing with 5–10 target learners; fix Critical/High issues before adding breadth.

## Complexity stop rule

Nếu một solution yêu cầu thêm distributed component, background queue, graph DB, arbitrary code runner hoặc ML, dừng và kiểm tra xem MVP problem có thể giải bằng synchronous Spring service + MySQL + simple rule hay không.
