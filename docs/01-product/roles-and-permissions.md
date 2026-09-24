# Product Roles & Permissions

MVP giữ role đơn giản.

## STUDENT

Có thể:
- quản lý profile và study preference của chính mình;
- Explore/preview curriculum;
- chọn learning goal;
- làm diagnostic, learning unit, practice, assessment, review;
- xem roadmap/progress của chính mình.

Không thể:
- sửa curriculum published;
- xem attempt/progress của user khác;
- thay đổi mastery trực tiếp qua API.

## CONTENT_EDITOR

Role nội bộ, có thể chưa cần UI ở MVP.

Có thể:
- tạo/sửa draft concept, learning unit, resource, question;
- submit content để review/publish theo quy trình đơn giản.

Không được:
- chỉnh learner state thủ công qua content API;
- cấp quyền admin.

## ADMIN

Dùng cho vận hành nội bộ tối thiểu.

Có thể:
- quản lý account status;
- publish/deprecate content sau khi review;
- xem operational logs/aggregate analytics phù hợp.

## MVP simplification

Nếu chưa xây Content Admin UI, `CONTENT_EDITOR` và `ADMIN` có thể chỉ tồn tại ở data/security model. Curriculum seed được quản lý bằng file YAML + migration/import script trong repository.
