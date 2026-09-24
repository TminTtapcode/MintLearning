# Prompt Guidelines for AI Learning Features

Prompt production nên có cấu trúc ổn định thay vì nối chuỗi tùy ý.

## Context sections

1. Role: learning assistant for this concept.
2. Learner level/state summary — không gửi dữ liệu ngoài nhu cầu.
3. Approved concept definition/objectives.
4. Approved resource excerpt/notes nếu license/policy cho phép.
5. Current exercise/question.
6. Task: explain/hint/classify.
7. Output format.
8. Guardrails: do not invent facts; do not reveal answer if only hint requested.

## Hint levels

- Level 1: nhắc concept/định hướng.
- Level 2: chỉ ra bước tiếp theo.
- Level 3: đưa partial structure/example tương tự.

Không nhảy ngay tới full answer trừ khi user yêu cầu solution/explanation sau attempt.

## Evaluation

Trước khi bật AI feature cho scored learning:
- có 20–50 sample prompts đại diện;
- review factual correctness;
- review whether hints leak answer;
- define fallback output.
