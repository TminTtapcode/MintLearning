# Release Gates

## Gate A — Build
- Backend tests pass.
- Frontend lint/build pass.
- Curriculum validation pass.

## Gate B — Data
- Flyway migration works from clean DB.
- Upgrade from current staging DB succeeds.
- No destructive migration without explicit review.

## Gate C — Security
- Authenticated ownership negative tests pass.
- No secrets committed.
- No sensitive token/password logs.

## Gate D — Critical flows
- Register/login.
- Today loads.
- One learning loop end-to-end.
- Review loop.

## Gate E — Product/Learning
- Acceptance criteria pass.
- Learning/content QA passes for changed published content.
- Known limitations documented.

MVP release có thể chấp nhận low-severity UI issues, nhưng không chấp nhận lỗi làm sai learner state, authorization hoặc published answer key.
