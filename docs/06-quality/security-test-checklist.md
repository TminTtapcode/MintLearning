# Security Test Checklist

- [ ] Authentication required where expected.
- [ ] Object ownership cannot be changed by query/body userId.
- [ ] Roles cannot be escalated client-side.
- [ ] Password/token never appear in logs.
- [ ] Validation rejects malformed/oversized input.
- [ ] HTML/Markdown/AI content rendered safely.
- [ ] CORS/CSRF strategy matches auth mechanism.
- [ ] Rate-limit/brute-force controls considered for auth endpoints.
- [ ] Dependency vulnerabilities scanned in CI before beta.
- [ ] Secrets absent from repository/history.
