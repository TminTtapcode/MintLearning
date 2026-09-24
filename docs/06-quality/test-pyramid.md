# Test Pyramid — MVP

MVP ưu tiên test business rule hơn số lượng test.

## Unit tests — nhiều nhất

Dùng cho logic thuần/deterministic:
- mastery score/state transition;
- review interval heuristic;
- planner priority/time budget;
- diagnostic scoring;
- validation helper.

Không mock mọi class chỉ để tăng coverage.

## Integration tests — vừa đủ

Dùng Spring Boot + test database/container khi cần để kiểm tra:
- repository mapping;
- Flyway schema;
- auth filter/security;
- controller → service → database cho critical API;
- transaction khi submit assessment tạo evidence + update state.

## E2E tests — ít nhưng critical

Tối thiểu các flow:
- register/login;
- select goal → roadmap;
- complete one learning unit/assessment;
- review due → submit → reschedule;
- missed-day/time change → Today rebalances.

## What not to do

- Không yêu cầu 100% code coverage.
- Không snapshot-test toàn bộ UI.
- Không viết E2E cho mọi button khi unit/integration đã cover.
