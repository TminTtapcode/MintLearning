# Test Strategy

## Test pyramid / layers

### Unit
- mastery calculation
- planner rules
- prerequisite eligibility
- assessment scoring
- validation

### Integration
- repository/database mappings
- module collaboration
- auth + authorization
- transaction behavior

### API contract
- request validation
- error envelope
- authorization boundaries

### Frontend component/integration
- states
- user interactions
- routing/resume

### E2E
Critical journeys only:
- onboarding → first session
- diagnostic → personalized roadmap
- learn → practice → assessment → mastery update
- missed days → rebalanced plan

## Regression principle

Bug fix phải thêm test ở layer thấp nhất có thể tái hiện nguyên nhân, cộng E2E chỉ nếu critical flow cần bảo vệ.
