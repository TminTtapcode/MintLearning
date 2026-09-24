# Install into Antigravity Workspace

## Existing project

Copy these items into the repository root:

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- `docs/`
- `curriculum/`
- `.agents/`

Keep `.agents` at repository root so Antigravity can discover workspace rules, skills and specialist agents.

## Recommended repository layout

```text
repo/
├── AGENTS.md
├── PROJECT_CONTEXT.md
├── .agents/
├── docs/
├── curriculum/
├── frontend/        # created during Phase 4
├── backend/         # created during Phase 4
├── docker/          # only when needed
├── compose.yaml     # Phase 4
└── README.md
```

## First Antigravity task — documentation audit

> Read AGENTS.md, PROJECT_CONTEXT.md, docs/00-governance/docs-index.md and docs/08-delivery/phase-0-4-readiness.md. Verify that the requested task is inside MVP scope. Do not write application code unless the task is Phase 4 implementation or later.

## Recommended Phase 4 task

> Read docs/04-architecture/phase4-bootstrap-spec.md and docs/08-delivery/phase4-bootstrap-checklist.md. Plan the smallest implementation steps for the Phase 4 technical foundation using React + TypeScript, Spring Boot, MySQL and Flyway. Follow simplicity-guardrails.md. Do not add Redis, Kafka, microservices, Kubernetes or a code execution sandbox.

## Feature workflow

For a feature:

> Use the plan-feature skill for EPIC-01 Explore & Goal. Read its feature spec, relevant screen spec, API/data contracts and tests before implementation.

Then implement with `/deliver-vertical-slice`, review with `/review-feature`.

## Skills

- `/plan-feature`
- `/deliver-vertical-slice`
- `/author-learning-unit`
- `/review-feature`
- `/release-check`

## Specialist agents

- product-manager
- learning-scientist
- ux-designer
- software-architect
- backend-engineer
- frontend-engineer
- qa-engineer
- devops-engineer
- data-ai-engineer

Specialist agents advise/implement within their source-of-truth boundaries; they do not override canonical Product/Learning/UX decisions.
