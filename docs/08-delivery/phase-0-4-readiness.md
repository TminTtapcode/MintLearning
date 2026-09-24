# Phase 0–4 Readiness Audit

Ngày audit baseline: 2026-09-24.

## Meaning of status

- `DOC READY`: specification cần thiết đã có.
- `EXECUTION OPEN`: cần user test/code/build evidence thật; docs không thể thay thế execution.
- `CLOSED`: chỉ khi exit checklist có evidence.

## Phase 0 — Discovery

**Documentation: DOC READY**

Có vision, persona, problems, learning principles/evidence, success metrics, assumptions, risks và open questions.

**Execution:** Product/team review vẫn nên xác nhận target user và MVP hypothesis.

## Phase 1 — Product Definition

**Documentation: DOC READY**

Có PRD, FR/NFR, business rules, feature catalog/priority, scope/out-of-scope, journeys, IA và feature specs.

## Phase 2 — Learning Architecture

**Documentation: DOC READY for MVP start**

Có taxonomy, concept graph seed YAML, learning unit spec, evidence/mastery/review/remediation/resource rules và HTTP sample unit.

Before broad content authoring: chạy validator cho graph và review content seed.

## Phase 3 — UX Architecture

**Documentation: DOC READY**

Có IA, design system baseline, low-fi wireframes, screen specs và usability test kit.

**Execution: OPEN**

Cần prototype có thể thao tác và test thật với target users. `usability-findings.md` hiện cố ý không bịa dữ liệu.

## Phase 4 — Technical Foundation

**Design documentation: DOC READY**

Có system/module/repo/package architecture, DB schema, API catalog, auth/security, local dev và bootstrap spec.

**Implementation: OPEN**

Cần tạo frontend/backend repo scaffold, MySQL/Flyway, auth baseline, CI và fresh-clone smoke theo `phase4-bootstrap-checklist.md`.

## Decision

Có thể bắt đầu thực thi Phase 4 ngay. Không nên bắt đầu toàn bộ Phase 5 song song trước khi auth/migration/CI baseline ổn định.
