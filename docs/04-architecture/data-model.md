# Data Model — Conceptual

## Core entities

### Identity
- User
- UserPreference / StudyAvailability

### Curriculum
- CareerPath
- LearningPath
- Concept
- ConceptPrerequisite
- LearningUnit
- LearningUnitConcept
- Resource
- LearningUnitResource
- Exercise
- ExerciseConcept
- Assessment
- Question
- QuestionConcept

### Learner state
- UserConceptState
- Evidence / Attempt
- AssessmentAttempt
- ExerciseAttempt
- ReviewSchedule
- ReviewAttempt

### Planning
- StudyPlan
- LearningSession
- LearningSessionItem

## Important constraints

- Concept slug unique.
- Prerequisite graph phải ngăn self-edge; cycle validation ở publication/admin workflow.
- Attempts immutable hoặc append-oriented; không overwrite lịch sử evidence.
- UserConceptState là projection/current state, có thể rebuild hoặc audit từ evidence ở mức cần thiết.
- `nextReviewAt` nullable khi chưa đủ condition.

## Ownership

Không để frontend gửi `userId` để quyết định ownership của authenticated resources. Backend lấy identity từ auth context.
