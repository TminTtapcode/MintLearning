# API Catalog — MVP v1

Base path: `/api/v1`.

Chi tiết request/response được viết khi feature refine; catalog này khóa capability và ownership.

## Auth/User

| Method | Path | Auth | Purpose |
|---|---|---|---|
| POST | `/auth/register` | Public | Register |
| POST | `/auth/login` | Public | Login + token |
| GET | `/users/me` | Student | Current profile |
| GET | `/users/me/study-preferences` | Student | Get learning time preference |
| PUT | `/users/me/study-preferences` | Student | Update learning time preference |
| POST | `/users/me/goals` | Student | Select learning path goal |

## Explore/Curriculum

| Method | Path | Auth | Purpose |
|---|---|---|---|
| GET | `/explore/domains` | Public | Architecture nodes |
| GET | `/explore/domains/{slug}` | Public | Role/domain detail |
| GET | `/career-paths` | Public | Available goals; MVP returns Backend Java |
| GET | `/learning-paths/{slug}` | Public/Student | Path overview |
| GET | `/concepts/{conceptKey}` | Public/Student | Concept preview |

## Diagnostic

| Method | Path | Auth | Purpose |
|---|---|---|---|
| POST | `/diagnostics` | Student | Start diagnostic |
| GET | `/diagnostics/{id}/next` | Owner | Get next question |
| POST | `/diagnostics/{id}/answers` | Owner | Submit answer |
| POST | `/diagnostics/{id}/complete` | Owner | Finish + initial state projection |
| POST | `/diagnostics/{id}/skip` | Owner | Skip without penalty |

## Roadmap/Today

| Method | Path | Auth | Purpose |
|---|---|---|---|
| GET | `/roadmap` | Student | Personal path + concept states |
| GET | `/today` | Student | Current generated/resumable session |
| POST | `/today/regenerate` | Student | Rebalance using current time/state |
| POST | `/learning-sessions/{id}/start` | Owner | Start session |
| POST | `/learning-sessions/{id}/complete` | Owner | Complete session |
| PATCH | `/learning-sessions/{id}/items/{itemId}` | Owner | Mark/resume item state |

## Learn/Practice

| Method | Path | Auth | Purpose |
|---|---|---|---|
| GET | `/learning-units/{id}` | Student | Learning workspace content |
| GET | `/learning-units/{id}/exercises` | Student | Unit exercises |
| POST | `/exercises/{id}/attempts` | Student | Submit exercise attempt/evidence |

## Assessment

| Method | Path | Auth | Purpose |
|---|---|---|---|
| POST | `/assessments/{id}/attempts` | Student | Start attempt |
| GET | `/assessment-attempts/{id}` | Owner | Get questions/progress |
| POST | `/assessment-attempts/{id}/answers` | Owner | Submit one answer |
| POST | `/assessment-attempts/{id}/submit` | Owner | Finalize, create evidence/update mastery |

## Review

| Method | Path | Auth | Purpose |
|---|---|---|---|
| GET | `/reviews/today` | Student | Due concepts/review items |
| POST | `/reviews/{id}/submit` | Owner | Submit retrieval result + reschedule |

## Progress

| Method | Path | Auth | Purpose |
|---|---|---|---|
| GET | `/progress` | Student | Summary groups and progress |
| GET | `/progress/concepts/{conceptKey}` | Student | Evidence/state detail for own concept |

## API rules

- Personal endpoints không nhận `userId` query/body để chọn owner.
- POST tạo action phải validate current state.
- Idempotency không cần framework riêng ở MVP; duplicate submit quan trọng được ngăn bằng attempt/session status + transaction.
- Pagination chỉ thêm ở endpoint có list có thể lớn; MVP curriculum nhỏ không cần paginate mọi thứ.
