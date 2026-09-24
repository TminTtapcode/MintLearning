# Product Requirements Document — IT Learning Platform

## 1. Product summary

IT Learning Platform là nền tảng học IT thích nghi cho người mới và sinh viên. Sản phẩm giúp người học hiểu bức tranh hệ thống trước khi chọn hướng, xác định kiến thức hiện tại, nhận lộ trình phù hợp, học bằng tài liệu có hướng dẫn, thực hành, kiểm tra và ôn lại theo thời gian.

MVP tập trung duy nhất vào **Backend Java Foundation** để tạo chiều sâu và giữ phạm vi phù hợp với một dự án sinh viên.

## 2. Problem statement

Roadmap IT phổ biến thường nói người học phải học gì nhưng không giải quyết đầy đủ 6 câu hỏi:

1. Vì sao cần học concept này?
2. Cần hiểu chính xác điều gì?
3. Học ở tài liệu nào và phần nào?
4. Thực hành bằng bài gì?
5. Làm sao chứng minh đã hiểu?
6. Khi nào cần kiểm tra lại để tránh quên?

Ngoài ra, người mới thường chưa hiểu Frontend, Backend, Database, API, DevOps liên hệ với nhau thế nào nên khó chọn hướng học ngay từ đầu.

## 3. Target users

### Primary
- Sinh viên CNTT năm 1–3 hoặc người tự học đã biết rất ít đến mức cơ bản.
- Muốn học Backend Java nhưng chưa có lộ trình rõ.
- Có thời gian học không ổn định, thường 20–90 phút mỗi buổi.

### Secondary
- Người đã học rời rạc Java/SQL/Git và muốn hệ thống hóa lại.

MVP không tối ưu cho senior engineer, bootcamp enterprise, giảng viên quản trị lớp học hoặc tổ chức đào tạo nhiều tenant.

## 4. Product goals

- Giúp người mới hình dung hệ thống phần mềm trước khi chọn hướng học.
- Không bắt người dùng học lại kiến thức đã biết nếu diagnostic có đủ bằng chứng.
- Mỗi learning unit luôn có objective, resource, practice, assessment và review intent.
- Tạo daily session phù hợp với quỹ thời gian hiện tại.
- Duy trì kiến thức cũ bằng retrieval/review thay vì chỉ đẩy kiến thức mới.
- Khi người học nghỉ, hệ thống điều chỉnh lại kế hoạch thay vì tạo danh sách overdue.

## 5. Non-goals for MVP

- Không xây mạng xã hội, leaderboard hay gamification cạnh tranh.
- Không xây mobile native app.
- Không xây marketplace khóa học.
- Không hỗ trợ mọi career path ngay từ đầu.
- Không dùng ML để dự đoán mastery ở MVP.
- Không xây microservices, Kafka, Kubernetes hoặc distributed architecture.
- Không thay thế IDE thực tế bằng một cloud coding IDE phức tạp.

## 6. Core experience

```text
Explore IT
   ↓
Choose Backend Java goal
   ↓
Optional diagnostic
   ↓
Personal roadmap
   ↓
Today session
   ↓
Review old concept
   ↓
Learn new concept
   ↓
Worked example
   ↓
Practice
   ↓
Knowledge check
   ↓
Update mastery + schedule review
   ↓
Adapt next session
```

## 7. Primary navigation

MVP có 6 tab chính:

1. Explore
2. Today
3. Roadmap
4. Learn
5. Review
6. Progress

Profile, study preferences và logout nằm trong user menu, không phải tab chính.

## 8. Functional scope

| Area | MVP behavior |
|---|---|
| Auth | Register, login, logout, current user |
| Explore | Interactive architecture map và role detail |
| Goal | Chọn Backend Java Foundation |
| Diagnostic | Có thể làm hoặc skip; câu hỏi map tới concept |
| Roadmap | Hiển thị concept graph và trạng thái người học |
| Today | Sinh session theo thời gian + review due + learning priority |
| Learn | Resource focus, explanation, example, practice, assessment |
| Practice | Guided + independent practice mức cơ bản |
| Assessment | Quiz/scenario/code-reading; lưu attempt |
| Mastery | Rule-based score/state từ evidence |
| Review | Schedule review, retrieval questions, cập nhật trạng thái |
| Progress | Strong/learning/weak/review due; không lấy streak làm trung tâm |
| Settings | Study time, sessions/week, basic profile |

Chi tiết nằm trong `functional-requirements.md`, `business-rules.md` và `feature-catalog.md`.

## 9. Learning requirements

- Beginner content ưu tiên mental model và worked example trước independent problem.
- Resource phải ghi rõ phần cần đọc/xem và phần có thể bỏ qua ở lần đầu.
- Assessment không chỉ cho điểm mà phải map lỗi về concept.
- Sai nhiều lần phải dẫn tới remediation đơn giản hơn hoặc prerequisite review.
- Completed resource không được dùng như bằng chứng mastery mạnh.
- Review due không chặn user học bài mới.

## 10. UX requirements

- Progressive disclosure: chỉ hiển thị lượng thông tin cần thiết cho bước hiện tại.
- Không shame bằng overdue, broken streak hoặc thông báo mang tính phán xét.
- Người học có thể thay đổi quỹ thời gian, học ngắn, preview concept sau và quay lại nội dung trước.
- Mọi critical flow phải có loading, empty, error và resume state.
- Mobile responsive ở mức usable, nhưng desktop-first cho MVP.

## 11. Technical constraints

- Frontend: React + TypeScript.
- Backend: Java + Spring Boot.
- Database: MySQL; quản trị local bằng MySQL Workbench nếu cần.
- Schema migration: Flyway.
- Architecture: modular monolith.
- API: REST/JSON.
- Auth: token-based authentication đơn giản; authorization enforce server-side.
- Docker Compose cho local DB và packaging sau khi local integration ổn định.

## 12. Success criteria for MVP

MVP đủ tốt để Alpha khi:

- Người mới có thể đi từ Explore → chọn Backend → diagnostic/skip → Today mà không cần người hướng dẫn.
- Một learning unit hoàn chỉnh chạy end-to-end.
- Assessment cập nhật concept state và review schedule đúng rule.
- Missed-day recovery tạo kế hoạch mới mà không sinh overdue debt.
- Backend/Frontend build pass, integration test cốt lõi pass, DB migration chạy từ database rỗng.
- Content seed Backend Java có ít nhất một slice hoàn chỉnh từ Web Basics → HTTP → REST → Spring REST.

## 13. Product metrics

### Activation
- onboarding_completed
- goal_selected
- first_learning_session_started
- first_learning_session_completed

### Learning
- diagnostic coverage
- practice accuracy
- delayed review accuracy
- weak concept recovery
- mastery state transitions

### Friction
- onboarding drop-off
- diagnostic skip rate
- session abandonment
- repeated error points

Metrics dùng để tìm vấn đề, không dùng để khẳng định quan hệ nhân quả về hiệu quả học tập nếu chưa có thiết kế đánh giá phù hợp.

## 14. Release boundary

MVP release không phụ thuộc vào việc có AI. Nếu AI chưa an toàn hoặc chưa ổn định, hệ thống vẫn phải chạy được bằng curated content + rule-based planner.
