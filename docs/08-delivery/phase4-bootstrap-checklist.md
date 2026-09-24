# Phase 4 Bootstrap Checklist

Phase 4 implementation chỉ CLOSED khi tất cả required item được tick bằng evidence thật.

## Repository
- [x] `frontend/` exists and builds.
- [x] `backend/` exists and builds.
- [x] `.env.example` exists.
- [x] `compose.yaml` starts MySQL.

## Backend
- [x] Spring Boot starts.
- [x] health endpoint works.
- [x] API error model implemented.
- [x] register/login/current user implemented.
- [x] security ownership baseline test exists.

## Database
- [x] Flyway enabled.
- [x] clean database migration succeeds.
- [x] identity baseline schema exists.
- [x] curriculum core schema exists or first slice has approved migration plan.

## Frontend
- [x] React/TypeScript starts.
- [x] router exists.
- [x] 6-tab app shell exists after auth.
- [x] API client handles auth/error baseline.
- [x] login/register connects to backend.

## CI
- [x] backend test/build job passes.
- [x] frontend lint/build job passes.
- [x] no secret in repository.

## Fresh-clone smoke
- [x] a teammate can follow local-development docs without undocumented manual DB changes.

Status: **CLOSED**
