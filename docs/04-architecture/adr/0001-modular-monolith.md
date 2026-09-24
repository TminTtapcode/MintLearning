# ADR-0001 — Use Modular Monolith for MVP

**Status:** Accepted

## Context

MVP có nhiều domain (assessment, mastery, review, planner) nhưng team/product chưa có scale requirement chứng minh microservices.

## Decision

Dùng một Spring Boot deployable với module boundaries rõ.

## Consequences

- Đơn giản local dev, test, deploy.
- Transaction/use-case coordination dễ hơn.
- Phải giữ dependency discipline để tránh “big ball of mud”.
- Chỉ tách service nếu có scaling/ownership/reliability reason thực tế và ADR mới.
