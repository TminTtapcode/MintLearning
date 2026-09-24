# Remediation Strategy

Mục tiêu remediation là giúp user sửa đúng lỗ hổng với ít friction nhất.

## Trigger

Remediation có thể được tạo khi:
- cùng concept sai 2 lần gần nhau;
- delayed retrieval sai;
- user chủ động chọn “Chưa hiểu”; hoặc
- assessment chỉ ra prerequisite gap rõ.

## Flow

```text
Incorrect/partial evidence
        ↓
Classify concept/error
        ↓
Short explanation
        ↓
Worked example
        ↓
Simpler guided practice
        ↓
Retry with new item
        ↓
Update evidence/mastery
```

## Error categories for MVP

- `CONCEPT_GAP`: chưa hiểu khái niệm.
- `PREREQUISITE_GAP`: thiếu nền tảng trước đó.
- `APPLICATION_GAP`: hiểu định nghĩa nhưng áp dụng sai.
- `CARELESS_OR_SYNTAX`: lỗi nhỏ, không nên hạ mastery quá mạnh.
- `UNKNOWN`: chưa đủ dữ liệu.

## UX rules

Không dùng “Bạn sai quá nhiều”. Dùng ngôn ngữ kiểu:

> Phần này còn hơi chưa chắc. Hãy xem một ví dụ ngắn rồi thử lại.

User có thể bỏ qua remediation và quay lại sau; hệ thống ghi concept cần review nhưng không chặn toàn app.
