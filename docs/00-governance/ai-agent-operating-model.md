# AI Agent Operating Model

## Agent phải làm gì trước một task lớn

1. Đọc `AGENTS.md`.
2. Xác định domain: Product / Learning / UX / Backend / Frontend / QA / DevOps.
3. Đọc docs domain tương ứng.
4. Tìm acceptance criteria hoặc tạo draft theo template nếu task là discovery.
5. Lập plan theo vertical slices.
6. Không chỉnh code nằm ngoài scope nếu không cần.

## Agent không được tự ý

- Thêm feature vì “thường app học tập có”.
- Thêm framework/infrastructure mới mà không có use case.
- Biến heuristic learning thành “AI/ML” không có evaluation.
- Sửa learning objective để khớp implementation.
- Bỏ qua empty/error/resume states.
- Dùng fake mastery chỉ dựa trên `lessonCompleted`.
- Hard-code learning path vào component nếu domain model đã yêu cầu data-driven.

## Verification requirement

Báo cáo cuối task cần nêu:

- Spec đã đọc.
- File đã thay đổi.
- Behavior đã implement.
- Test/build đã chạy và kết quả.
- Acceptance criteria nào đã pass/chưa pass.
- Assumption/risk còn lại.

## Context minimization

Không đọc toàn bộ `/docs` cho mọi task. Dùng `docs-index.md` để chọn đúng tài liệu. Rules luôn-on giữ ngắn; chi tiết để trong docs/skills nhằm tránh prompt bloat.
