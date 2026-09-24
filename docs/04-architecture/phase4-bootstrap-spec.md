# Phase 4 Bootstrap Specification

Đây là implementation contract để đóng Phase 4 trước khi bắt đầu feature MVP lớn.

## Backend scaffold

- Spring Boot app build được.
- Packages theo `package-structure.md`.
- Spring Web, Validation, Security, Data JPA, MySQL driver, Flyway, test dependencies tối thiểu.
- Health endpoint.
- Global API error handler.
- Register/login/current-user baseline.

## Frontend scaffold

- React + TypeScript + Vite.
- Router.
- API client nhỏ.
- Auth state.
- App shell/sidebar placeholder cho 6 tabs.
- Loading/error boundary cơ bản.

## Database

- MySQL container.
- Flyway migration `V1` identity/auth baseline.
- `V2` curriculum core.
- `V3` learner state/session core có thể thêm khi slice yêu cầu; không cần tạo mọi table ngay nếu chưa dùng, miễn schema design đã được chốt.

## CI

Backend:
- compile
- test

Frontend:
- install
- lint
- test nếu có
- build

## Exit

Phase 4 implementation closed khi một fresh clone có thể:

`start MySQL → start backend → migration succeeds → start frontend → register/login → frontend calls authenticated /users/me → CI green`.
