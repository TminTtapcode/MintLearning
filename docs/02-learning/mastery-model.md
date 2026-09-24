# Mastery Model

## Canonical learner states

- `NOT_STARTED`
- `INTRODUCED`
- `LEARNING`
- `PRACTICING`
- `STRONG`
- `REVIEW_DUE`
- `NEEDS_REINFORCEMENT`

`STRONG` được dùng thay cho từ “mastered” tuyệt đối để tránh tạo cảm giác kiến thức đã hoàn tất vĩnh viễn.

## UserConceptState

Tối thiểu gồm:

- userId
- conceptId
- masteryScore 0..100
- confidence LOW/MEDIUM/HIGH
- state
- lastEvidenceAt
- lastReviewedAt
- nextReviewAt
- evidenceVersion

Các count chi tiết có thể tính từ `learning_evidence` khi cần; không bắt buộc nhồi toàn bộ aggregate vào table ngay MVP.

## Core rules

- `lesson_completed` không set `STRONG` trực tiếp.
- Resource exposure chủ yếu tạo `INTRODUCED`.
- Practice/quiz đưa concept qua `LEARNING`/`PRACTICING` tùy evidence.
- `STRONG` cần independent evidence và delayed retrieval/project evidence theo heuristic v1.
- Khi đến lịch ôn, state có thể hiển thị `REVIEW_DUE` mà không xóa score trước đó.
- Repeated retrieval failure có thể chuyển sang `NEEDS_REINFORCEMENT` và tạo remediation.

## Score vs state

Score là chi tiết thuật toán; state là cách giải thích đơn giản hơn cho UI. Nếu score và state tạm thời khác nhau do review due, state ưu tiên diễn đạt hành động cần thiết.

Chi tiết threshold và delta: `docs/05-data-ai/mastery-calculation.md`.
