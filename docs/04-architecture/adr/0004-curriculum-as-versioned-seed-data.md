# ADR-0004 — Curriculum as Versioned Seed Data

Status: Accepted

## Context

MVP cần content có cấu trúc nhưng xây CMS đầy đủ sẽ tăng scope lớn.

## Decision

Backend Java curriculum được author bằng YAML/Markdown trong repository, validate trong CI và import/seed vào MySQL cho runtime.

## Consequences

Positive:
- dễ review bằng Git;
- agent và người đọc được;
- không cần admin CMS sớm;
- versioned cùng code.

Trade-off:
- content editor cần biết Git/file format;
- edit runtime không linh hoạt.

Khi content team lớn hơn mới xem xét CMS.
