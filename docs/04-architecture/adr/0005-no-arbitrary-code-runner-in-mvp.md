# ADR-0005 — No Arbitrary Code Runner in MVP

Status: Accepted

## Context

Một code runner online yêu cầu sandbox isolation, resource limits, security hardening và execution infrastructure vượt phạm vi learning core của đồ án.

## Decision

MVP không thực thi code Java tùy ý trên server. Practice dùng:
- code reading;
- fill/modify small snippets;
- answer/rubric;
- mini project người học chạy trong IDE local.

## Consequences

Product vẫn cover learning loop nhưng không có auto-judge programming toàn diện. Có thể bổ sung sandbox ở phase sau bằng ADR riêng nếu thật sự cần.
