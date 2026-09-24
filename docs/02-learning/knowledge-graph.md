# Knowledge Graph Specification

## Node

`Concept`

Required fields:

- `id`
- `slug`
- `title`
- `summary`
- `difficulty`
- `domain`
- `status`
- `learningObjectives[]`

## Edge

`ConceptPrerequisite`

- `fromConceptId` = prerequisite
- `toConceptId` = dependent concept
- `strength` = REQUIRED | RECOMMENDED
- `reason`

## Example

```mermaid
graph TD
  A[Client/Server] --> B[HTTP]
  B --> C[REST]
  D[Java Basics] --> E[OOP]
  E --> F[Spring MVC]
  B --> F
  C --> F
  G[Relational DB] --> H[SQL]
  H --> I[JPA]
  E --> I
```

## Planner semantics

- REQUIRED prerequisite weak → prioritize repair before assigning dependent concept as primary new content.
- RECOMMENDED prerequisite weak → planner may proceed with scaffold.
- User can preview any node.

## Data rule

Graph phải data-driven; không hard-code sequence trong React route/component.
