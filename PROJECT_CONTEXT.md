# Project Context

## Product

**IT Learning Platform** là nền tảng học IT thích nghi, ưu tiên sinh viên/người mới chưa hình dung Frontend, Backend, Database, API và DevOps phối hợp thế nào.

## Core problem

Roadmap thông thường thường chỉ nói “học gì”. Hệ thống này phải trả lời thêm:

1. Vì sao concept cần thiết?
2. Concept nằm ở đâu trong hệ thống?
3. Học tài liệu nào, phần nào?
4. Thực hành gì ngay sau học?
5. Làm sao biết đã hiểu?
6. Khi nào kiểm tra lại để không quên?
7. Nếu user bận/nghỉ, kế hoạch thay đổi thế nào?

## Product loop

```text
Explore → Choose Goal → Diagnostic/Skip → Roadmap → Today
    → Learn → Practice → Assess → Mastery State → Review → Adapt ↺
```

## UX philosophy

- Guide, do not punish.
- Progressive disclosure.
- No overdue debt.
- Prerequisites guide, not hard-lock preview.
- User can change time, pause, resume, review, skip temporarily.
- Completion is not mastery.
- Today is the main “what should I do now?” surface.

## MVP scope

Only **Backend Java Foundation** is fully authored in MVP.

## Architecture baseline

- React + TypeScript.
- Spring Boot modular monolith.
- MySQL + Flyway.
- REST/JSON.
- Docker Compose.
- No microservices/Kafka/Kubernetes/ML/code sandbox in MVP by default.

## Core domain objects

`Concept`, `ConceptPrerequisite`, `LearningPath`, `LearningUnit`, `Resource`, `Exercise`, `Assessment`, `Question`, `LearningEvidence`, `UserConceptState`, `ReviewSchedule`, `LearningSession`.

## Mastery states

`NOT_STARTED`, `INTRODUCED`, `LEARNING`, `PRACTICING`, `STRONG`, `REVIEW_DUE`, `NEEDS_REINFORCEMENT`.

## Non-negotiable learning unit contract

Không giao learning task nếu chưa có:
- why it matters;
- objectives;
- resource focus;
- example/explanation;
- practice;
- evidence/check;
- review intent.

## Read first for implementation

- Product: `docs/01-product/prd.md`, `business-rules.md`.
- Learning: `docs/02-learning/` + `curriculum/backend-java/`.
- UX: relevant file in `docs/03-ux/screens/`.
- API/data: `docs/04-architecture/api-catalog.md`, `database-schema.md`.
- Quality: `docs/06-quality/`.
