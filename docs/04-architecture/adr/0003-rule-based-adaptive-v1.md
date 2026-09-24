# ADR-0003 — Rule-based Adaptive Planning Before ML

**Status:** Accepted

## Context

Chưa có đủ product data để train/evaluate personalized ML model đáng tin.

## Decision

Diagnostic branching, mastery score và review/planner v1 dùng rules/heuristics có thể giải thích và test.

## Consequences

- Dễ audit và unit test.
- Cần logging/evidence để sau này đánh giá model tốt hơn.
- Không marketing heuristic như “AI predicts exactly how you learn”.
