# Docker Strategy

## Order

1. Frontend/backend/database chạy local và integration ổn định.
2. Standardize env vars.
3. Dockerize backend.
4. Dockerize frontend/build serving strategy.
5. Docker Compose cho local integrated stack nếu hữu ích.
6. CI builds images.

## Why not Docker-first

Docker không thay thế việc hiểu local build/runtime. MVP ưu tiên validate product flow trước, nhưng containerization phải hoàn tất trước staging/reproducible release.

## Containers

Expected later:
- web
- api
- mysql (local/dev compose; production managed DB tùy provider)
- redis chỉ khi ADR/use case chấp thuận
