# Concept Taxonomy

Taxonomy giúp curriculum nhất quán nhưng không biến nội dung thành ontology phức tạp.

## Concept types

- `FOUNDATION`: khái niệm nền, ví dụ client-server, variable, HTTP.
- `LANGUAGE`: kiến thức ngôn ngữ/lập trình, ví dụ Java OOP, Collections.
- `DATA`: database/SQL/JPA.
- `FRAMEWORK`: Spring Boot/Spring MVC.
- `TOOLING`: Git, Maven, Docker cơ bản.
- `QUALITY`: testing, validation, error handling.
- `SECURITY`: authentication/authorization fundamentals.
- `PROJECT`: tích hợp nhiều concept thành mini project.

## Concept fields

Mỗi concept tối thiểu có:

- `id`: mã ổn định, dạng `web.http`.
- `title`.
- `type`.
- `level`: `BEGINNER | FOUNDATION_PLUS` cho MVP.
- `summary`.
- `whyItMatters`.
- `prerequisites[]`.
- `estimatedMinutes` cho learning exposure đầu tiên.
- `status`: `DRAFT | REVIEWED | PUBLISHED | DEPRECATED`.

## Scope rule

Concept phải đủ nhỏ để có objective và assessment rõ, nhưng không nhỏ tới mức mỗi syntax keyword là một concept riêng.

Ví dụ tốt: `java.collections`, `web.http`, `db.sql-joins`.

Ví dụ quá nhỏ: `java.for-loop-keyword`.
