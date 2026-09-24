# Authentication Design — MVP

Mục tiêu là auth đủ an toàn cho đồ án web nhưng dễ hiểu và triển khai.

## Choice

- Email + password.
- Password hash bằng BCrypt/PasswordEncoder của Spring Security.
- Backend phát access JWT sau login.
- Frontend gửi `Authorization: Bearer <token>` cho authenticated API.
- Access token có thời hạn hữu hạn; MVP có thể yêu cầu login lại khi hết hạn thay vì xây refresh-token subsystem ngay.

## Why this choice

- Dễ hiểu cho sinh viên học backend.
- Stateless API đơn giản cho MVP.
- Không cần session store/Redis.

## Token claims tối thiểu

- subject/user id
- role
- issued at
- expiration

Không nhét learner progress hoặc permission động vào token.

## Client storage

MVP ưu tiên lưu token trong `sessionStorage` thay vì localStorage dài hạn để giảm persistence. Đây vẫn không loại bỏ XSS risk; frontend phải tránh unsafe HTML và production design có thể chuyển sang secure HttpOnly cookie nếu cần.

## Authorization

- Public: auth endpoints, Explore public content nếu Product chọn public.
- Authenticated STUDENT: personal roadmap/today/learn/review/progress.
- CONTENT_EDITOR/ADMIN: internal content operations nếu được triển khai.

Mọi ownership check nằm ở backend; client không truyền `userId` để chọn dữ liệu cá nhân.

## Password baseline

- Tối thiểu 8 ký tự cho MVP; khuyến khích passphrase.
- Không log password/token.
- Login error không phân biệt email tồn tại hay không nếu điều đó tạo account enumeration risk.

## Deferred

- OAuth social login.
- MFA.
- Refresh token rotation.
- Password reset email nếu demo không có mail service.

Các phần deferred phải được bổ sung trước production public thật nếu yêu cầu threat model cao hơn.
