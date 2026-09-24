# Business Rules

Các rule này là behavior bắt buộc của sản phẩm. Agent không được tự thay đổi chỉ vì implementation thuận tiện hơn.

## Identity and ownership

- **BR-001** Authenticated API lấy user identity từ security context, không tin `userId` từ client cho dữ liệu cá nhân.
- **BR-002** User chỉ được xem/sửa learner state, plan, attempt và preference của chính mình.

## Onboarding and diagnostic

- **BR-010** Diagnostic là tùy chọn. User được phép bắt đầu từ cơ bản.
- **BR-011** Diagnostic không dùng từ ngữ kiểu “đậu/rớt”. Mục đích là tránh dạy lại kiến thức đã biết.
- **BR-012** Câu trả lời diagnostic chỉ ảnh hưởng các concept mà câu hỏi map tới hoặc prerequisite liên quan theo rule rõ ràng; không suy rộng tùy ý.
- **BR-013** “Tôi đã biết” không tự động đánh dấu STRONG; hệ thống có thể yêu cầu một quick check ngắn.

## Curriculum and roadmap

- **BR-020** Prerequisite dùng để gợi ý thứ tự học, không cấm user preview concept sau.
- **BR-021** Concept graph không được có self-edge hoặc cycle khi publish.
- **BR-022** MVP chỉ publish Backend Java Foundation; schema có thể hỗ trợ path khác nhưng không cần nội dung giả.

## Learning units

- **BR-030** Learning unit hợp lệ phải có learning objective, why-it-matters, resource focus, ít nhất một practice activity, assessment intent và review intent.
- **BR-031** Link tài liệu phải có ghi chú phần nên đọc/xem. Không giao nguyên một tài liệu dài mà không có focus.
- **BR-032** Resource view/completion không đồng nghĩa mastery.
- **BR-033** Nếu content phụ thuộc concept chưa có nền, UI phải giải thích prerequisite và cho phép preview.

## Assessment and mastery

- **BR-040** Assessment attempt được lưu như lịch sử; không overwrite attempt cũ.
- **BR-041** Mastery được cập nhật từ evidence có trọng số đơn giản và có thể giải thích.
- **BR-042** Một lần đúng không đủ để chuyển concept khó từ NOT_STARTED sang STRONG.
- **BR-043** Delayed retrieval có giá trị evidence cao hơn chỉ mở resource.
- **BR-044** Sai phải map về concept hoặc loại lỗi nếu có thể; feedback không chỉ hiển thị đáp án.
- **BR-045** Repeated failure có thể tạo remediation activity hoặc review prerequisite.

## Review

- **BR-050** Review due là ưu tiên, không phải hard lock.
- **BR-051** Trả lời review sai phải làm lịch ôn gần hơn; trả lời đúng ổn định có thể kéo dài khoảng cách.
- **BR-052** Scheduler MVP dùng heuristic dễ hiểu, không cần ML.

## Planning and time

- **BR-060** User có thể thay đổi available study time bất cứ lúc nào.
- **BR-061** Missed session không tạo “overdue debt”. Planner tạo lại kế hoạch từ trạng thái hiện tại.
- **BR-062** Nếu user chỉ có 10–15 phút, hệ thống có thể tạo lite session thay vì ép buổi đầy đủ.
- **BR-063** Today ưu tiên: review cần thiết → current learning objective → practice/assessment còn dang dở, nhưng không cần nhồi đủ mọi loại trong mỗi buổi ngắn.
- **BR-064** Resume item dang dở được ưu tiên nếu vẫn còn phù hợp và chưa superseded bởi remediation.

## Progress

- **BR-070** Progress hiển thị learning state, không chỉ phần trăm task completed.
- **BR-071** Streak nếu có chỉ là thông tin phụ, không reset toàn bộ progress và không dùng language gây áp lực.

## AI

- **BR-080** AI output không tự động trở thành curriculum/source of truth.
- **BR-081** AI có thể tạo explanation, hint, exercise variant hoặc feedback, nhưng factual/assessment content quan trọng phải dựa trên curated concept/resource/rule.
- **BR-082** Khi AI không khả dụng, core learning flow vẫn phải hoạt động.
