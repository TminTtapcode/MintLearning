# IT Learning Platform — Product, Learning & Engineering Documentation

Bộ tài liệu này là source of truth cho một nền tảng học IT thích nghi theo người học, được tổ chức để **sinh viên và AI agent trên Antigravity** có thể cùng đọc, lập kế hoạch và triển khai mà không tự ý mở rộng hệ thống.

## Product loop

`Explore → Choose → Diagnose → Roadmap → Today → Learn → Practice → Assess → Review → Adapt`

Sản phẩm không phải “AI roadmap + todo list”. Mỗi learning unit phải cho người học biết vì sao học, học gì, đọc ở đâu, thực hành gì, chứng minh đã hiểu thế nào và khi nào ôn lại.

## MVP

Chỉ một learning path có chiều sâu: **Backend Java Foundation**.

Baseline stack:
- React + TypeScript
- Java + Spring Boot
- MySQL
- Flyway
- REST/JSON
- Modular Monolith
- Docker Compose
- Rule-based adaptive planner/mastery v1

MySQL Workbench là công cụ quản trị DB, không phải database engine.

## Simplicity promise

Project ưu tiên code mà sinh viên có thể giải thích trong buổi bảo vệ. Không thêm microservices, Kafka, graph DB, Kubernetes, ML recommendation hoặc online code sandbox ở MVP nếu chưa có problem thật và ADR mới.

Đọc `docs/00-governance/simplicity-guardrails.md`.

## Entry points

1. `AGENTS.md` — bắt buộc cho AI agent.
2. `PROJECT_CONTEXT.md` — bối cảnh ngắn gọn.
3. `docs/00-governance/docs-index.md` — bản đồ tài liệu.
4. `docs/01-product/prd.md` — định nghĩa sản phẩm.
5. `docs/01-product/business-rules.md` — business invariants.
6. `docs/02-learning/` — learning architecture.
7. `curriculum/backend-java/` — curriculum machine-readable.
8. `docs/03-ux/` — UX contracts và wireframes.
9. `docs/04-architecture/` — architecture, DB, API, auth.
10. `docs/06-quality/` — test/quality gates.
11. `docs/08-delivery/phase-0-4-readiness.md` — trạng thái readiness.

## Current status

- Phase 0–2 documentation: ready for execution/review.
- Phase 3 documentation: ready; usability execution vẫn cần người dùng thật.
- Phase 4 design: ready; technical scaffold/CI/auth implementation chưa được docs này tự động tạo.
- Phase 5: chưa nên mở rộng toàn bộ trước khi Phase 4 bootstrap chạy end-to-end.

Xem `docs/08-delivery/checklists/` để đóng phase bằng evidence thay vì cảm giác “có vẻ xong”.
