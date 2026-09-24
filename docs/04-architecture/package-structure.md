# Backend Package Structure

Mục tiêu là module rõ nhưng code vẫn dễ đọc. Không áp dụng DDD/Clean Architecture nhiều tầng một cách máy móc.

```text
com.example.itlearning
├── auth
├── user
├── explore
├── curriculum
├── diagnostic
├── learning
├── assessment
├── mastery
├── review
├── planner
├── progress
└── common
```

Mỗi module có thể dùng cấu trúc nhỏ:

```text
feature/
├── FeatureController.java
├── FeatureService.java
├── FeatureRepository.java
├── dto/
├── model/
└── mapper/       # chỉ khi mapping đủ lớn để cần tách
```

## Rules

- Controller xử lý HTTP mapping/validation, không chứa business flow dài.
- Service chứa use case/business rule.
- Repository chỉ truy cập persistence.
- Entity không được trả trực tiếp làm API response.
- Không tạo interface/service abstraction chỉ để “đúng pattern” nếu chỉ có một implementation và chưa có nhu cầu test boundary đặc biệt.
- `common` chỉ chứa thứ thật sự dùng chung; không biến thành nơi chứa mọi thứ.
