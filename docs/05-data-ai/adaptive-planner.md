# Adaptive Planner v1

Planner v1 là synchronous rule-based service.

## Inputs

- active learning path;
- concept prerequisites/order;
- UserConceptState;
- review due list;
- current incomplete session/item;
- available minutes hôm nay;
- default session preference.

## Candidate priority

1. `RESUME_INCOMPLETE` — nếu activity vẫn hợp lệ.
2. `PREREQUISITE_REPAIR` — weak prerequisite cần thiết cho current concept.
3. `REVIEW_DUE` — giới hạn bởi review budget.
4. `NEXT_PATH_CONCEPT` — concept mới đủ prerequisite khuyến nghị.
5. `PRACTICE_CURRENT` — tăng practice khi concept đang PRACTICING.
6. `QUICK_CHECK` — nếu còn thời gian.

## Time budgets

Default 60 phút:
- review target tối đa khoảng 15 phút;
- new learning 20–30 phút;
- practice/check phần còn lại.

10–15 phút:
- ưu tiên 1 review quan trọng **hoặc** resume/practice nhỏ;
- không bắt buộc thêm concept mới.

Các tỷ lệ là product defaults, không phải tỷ lệ nghiên cứu “tối ưu”.

## Selection pseudocode

```text
budget = availableMinutes
items = []

if resumableItem fits and stillRelevant:
    add(resumableItem)

add prerequisite repair if critical and fits
add due reviews until reviewBudget reached
add next learning/practice item if fits
add quick check if meaningful and fits

return session(items, reasonCodes)
```

## Missed days

Không replay calendar task cũ. Khi user quay lại, planner dùng learner state và current due reviews để tạo session mới.

## Explainability

Mỗi item lưu reason code:
- `RESUME_INCOMPLETE`
- `PREREQUISITE_REPAIR`
- `REVIEW_DUE`
- `NEXT_PATH_CONCEPT`
- `PRACTICE_CURRENT`
- `QUICK_CHECK`

UI có thể hiển thị explanation ngắn như “Ôn HTTP vì phần này đến lịch kiểm tra lại”.

## Tests

Planner phải deterministic với cùng input/time và có unit tests cho 10, 30, 60, 90 phút; missed days; no due review; many due reviews; weak prerequisite.
