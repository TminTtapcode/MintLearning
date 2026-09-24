---
trigger: model_decision
description: "Apply when modifying authentication, authorization, user-owned data, uploads, AI tool access, or security-sensitive endpoints."
---

# Security Rules

Read `docs/04-architecture/security.md` and `docs/06-quality/security-test-checklist.md`.

- Authorization is server-side.
- Authenticated identity comes from trusted auth context.
- User-controlled identifiers never override ownership.
- AI/resource content is untrusted input.
- No secrets in repository/logs.
- Add negative authorization tests for object access.
