# Diagnostic Strategy

## Goal

Tìm điểm bắt đầu hợp lý và tránh dạy lại thứ người học đã biết.

## UX constraints

- Có “Start from basics” để skip diagnostic.
- Bắt đầu ngắn; mở rộng câu hỏi khi cần phân biệt level.
- Không dùng ngôn ngữ thi cử gây áp lực.

## Question selection v1

Rule-based branching:

1. Chọn anchor concepts từ competency groups.
2. Nếu đúng chắc chắn ở concept nền → sample concept cao hơn.
3. Nếu sai → probe prerequisite gần nhất.
4. Dừng khi đủ confidence để chọn starting band hoặc đạt max question budget.

## Output

Per concept:

- `estimated_state`
- `confidence`
- `evidence_ids`

Không chỉ một `diagnostic_score` tổng.

## Safety

Diagnostic không được đánh dấu `STRONG` chỉ từ một câu đúng. Diagnostic có thể khởi tạo `LEARNING`/`PRACTICING` với confidence phù hợp rồi tiếp tục verify trong learning flow.
