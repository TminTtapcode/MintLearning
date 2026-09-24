# Review & Retrieval Strategy

## Goal

Đưa kiến thức cũ quay lại với chi phí thời gian hợp lý.

## Scheduler v1

Heuristic, không ML:

- Incorrect independent/retrieval → review sớm.
- Correct nhưng hint/slow → interval ngắn-vừa.
- Correct độc lập nhiều lần → tăng interval.
- Repeated failure → prerequisite repair + new variant.

Không hard-code một lịch 1/3/7/14 cho mọi concept như chân lý; có thể dùng interval defaults làm seed và điều chỉnh theo evidence.

## Daily mix

Today planner ưu tiên:

1. Fragile/due prerequisite review.
2. Small amount of new learning.
3. Practice on current path.
4. Short retrieval check.

## Review UX

Không gọi “nợ bài”. Dùng ngôn ngữ: “Có vài kiến thức nên củng cố”.
