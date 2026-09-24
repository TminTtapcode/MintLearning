# Analytics Event Catalog

## Naming

`domain_action` snake_case.

## Core events

### Onboarding
- `explore_started`
- `explore_node_opened`
- `goal_selected`
- `diagnostic_started`
- `diagnostic_skipped`
- `diagnostic_completed`

### Learning
- `session_generated`
- `session_started`
- `session_resumed`
- `learning_unit_started`
- `resource_opened`
- `guided_practice_submitted`
- `independent_practice_submitted`
- `assessment_submitted`
- `learning_unit_completed`

### Review
- `review_started`
- `review_item_answered`
- `review_completed`

### Planning
- `availability_changed`
- `plan_rebalanced`
- `short_session_selected`

## Event rule

Không gửi raw answer/code/user content vào analytics mặc định. Event schema phải data-minimized và versioned.
