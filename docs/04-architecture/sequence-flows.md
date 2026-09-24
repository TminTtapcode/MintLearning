# Important Sequence Flows

These diagrams are intentionally simple so students can map them to controllers/services/tables.

## Login

```mermaid
sequenceDiagram
  participant UI as React
  participant Auth as AuthController/AuthService
  participant DB as MySQL
  UI->>Auth: POST /api/v1/auth/login
  Auth->>DB: find user by email
  DB-->>Auth: user + password hash
  Auth->>Auth: verify password, create JWT
  Auth-->>UI: token + basic profile
  UI->>Auth: GET /api/v1/users/me (Bearer token)
  Auth-->>UI: current user
```

## Assessment → evidence → mastery/review

```mermaid
sequenceDiagram
  participant UI
  participant A as AssessmentService
  participant E as Evidence/MasteryService
  participant R as ReviewService
  participant DB as MySQL
  UI->>A: submit assessment attempt
  A->>DB: validate owner + load questions
  A->>A: evaluate answers
  A->>DB: save question/assessment attempts
  A->>E: record concept evidence
  E->>DB: append learning_evidence
  E->>DB: update user_concept_states
  E->>R: recompute review schedule
  R->>DB: upsert active review schedule
  A-->>UI: score + feedback + concept effects
```

## Today generation

```mermaid
sequenceDiagram
  participant UI
  participant P as PlannerService
  participant DB as MySQL
  UI->>P: GET /api/v1/today
  P->>DB: active goal + preferences
  P->>DB: concept states + due reviews + incomplete session
  P->>P: deterministic priority + time fitting
  P->>DB: save/reuse today's learning session
  P-->>UI: ordered session items + reason codes
```

## Missed-day recovery

No cron job is required in MVP. When learner returns, planner computes from current timestamps/state. The system does not create one missed task per calendar day.
