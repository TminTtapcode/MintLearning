# Module Architecture

## Proposed backend modules

- `auth`
- `user`
- `explore`
- `career`
- `concept`
- `learningpath`
- `resource`
- `diagnostic`
- `planner`
- `session`
- `exercise`
- `assessment`
- `mastery`
- `review`
- `progress`
- `analytics`

## Dependency rule

Domain modules không được import persistence internals của module khác. Cross-module use case đi qua service/interface/query boundary rõ.

## Key flow

```mermaid
sequenceDiagram
  participant UI
  participant Assessment
  participant Mastery
  participant Review
  participant Planner
  UI->>Assessment: submit answers
  Assessment->>Assessment: evaluate evidence
  Assessment->>Mastery: record concept evidence
  Mastery->>Review: update due scheduling inputs
  Review->>Planner: due/fragile concepts
  Planner-->>UI: next session plan
```

## Frontend feature areas

Mirror user capabilities, không mirror backend package một cách máy móc: `explore`, `onboarding`, `roadmap`, `today`, `learn`, `review`, `progress`, `auth`.
