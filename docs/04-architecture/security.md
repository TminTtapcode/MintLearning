# Security Baseline

## Authentication

MVP choice is documented in `auth-design.md`:
- email/password;
- BCrypt-style password hashing via Spring Security PasswordEncoder;
- finite-lifetime access JWT;
- Bearer auth;
- no refresh-token subsystem required for first MVP.

## Authorization

- Authorization and ownership are enforced server-side.
- Personal APIs derive user identity from authentication context.
- User A cannot access attempts, sessions, roadmap or progress owned by user B.
- Elevated role does not automatically grant access to arbitrary learner data unless an explicit admin use case exists.

## Input/output

- Validate DTO input.
- Use parameterized/JPA persistence; never concatenate user input into SQL.
- Do not render untrusted HTML from AI/resource directly.
- Return standard API errors; no stack traces to client.

## Secrets

- Use environment variables/local secret config.
- Never commit real `.env`, DB password, JWT secret or API key.
- `.env.example` contains placeholders only.

## Logging

Never log:
- password;
- full Authorization header/token;
- sensitive raw learner answers unless needed and explicitly designed.

## AI/resource content

Treat AI output and external resource text as untrusted content. AI cannot authorize actions or write privileged state solely because external text asks it to.

## MVP threat priorities

1. Broken object-level authorization.
2. Weak password/token handling.
3. Injection/unsafe rendering.
4. Duplicate state-changing submissions.
5. Secrets in source/logs.

Do these well before adding advanced security infrastructure.
