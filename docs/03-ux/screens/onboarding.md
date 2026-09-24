# Screen Spec — Onboarding

## Purpose

Đưa người mới từ mental model đến kế hoạch đầu tiên.

## Primary action

Initial plan.

## Flow

`welcome → Explore → goal → diagnostic/skip → initial plan`

## Required UI blocks

- Page title/context.
- Main content for the flow.
- One clear primary action.
- Secondary/back action where applicable.
- Inline explanation when a learning/business rule is not obvious.

## Data/API dependencies

- `GET /api/v1/explore/domains`
- `POST /api/v1/users/me/goals`
- `POST /api/v1/diagnostics`

## Required states

- Loading: skeleton/spinner without layout jump.
- Empty: explain why empty and next useful action.
- Error: human-readable message + retry where safe.
- Unauthorized: redirect/login, never leak data.
- Resume: where the flow can be interrupted, preserve last safe state.

## UX constraints

- Do not shame or use overdue language.
- Do not hide essential explanations behind hover only.
- Do not require understanding of internal mastery score.
- Keep primary action obvious on desktop and mobile.

## Accessibility

- Keyboard reachable actions.
- Visible focus.
- Semantic headings/labels.
- Status is not communicated by color alone.

## Analytics

Track only events needed to understand flow completion/friction; see `docs/05-data-ai/analytics-events.md`.

## Acceptance criteria

- User can complete the critical flow without entering IDs manually.
- Loading/empty/error state exists.
- API ownership/security behavior matches backend rules.
- Copy follows `states-and-microcopy.md`.
