# AI Guardrails

AI là optional assistant, không phải nền tảng bắt buộc của MVP.

## Allowed

- Giải thích lại concept dựa trên curated context.
- Tạo hint theo từng bước.
- Tạo biến thể bài tập từ template đã duyệt.
- Phân loại lỗi để đề xuất remediation.
- Tóm tắt resource đã xác minh.

## Not allowed as sole authority

- Tự thay đổi prerequisite graph.
- Tự publish curriculum/question answer.
- Tự kết luận mastery khi không có evidence.
- Quyết định authorization/security.
- Bịa API/framework behavior khi context thiếu.

## Output rules

- Khi giải thích technical fact, ưu tiên context/source đã curate.
- Nếu không chắc, nói thiếu thông tin thay vì bịa.
- Generated exercise phải có expected answer/rubric trước khi dùng cho scored assessment.
- Không gửi secrets/password/token hoặc learner private data không cần thiết vào model context.

## Fallback

AI unavailable → curated explanation, static hint và deterministic assessment vẫn hoạt động.
