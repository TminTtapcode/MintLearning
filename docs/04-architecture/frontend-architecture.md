# Frontend Architecture — MVP

Keep React structure feature-oriented and small.

```text
frontend/src/
├── app/
│   ├── router.tsx
│   └── AppShell.tsx
├── auth/
├── explore/
├── today/
├── roadmap/
├── learn/
├── review/
├── progress/
├── settings/
├── components/
├── api/
│   └── apiClient.ts
├── types/
└── main.tsx
```

## State strategy

- Auth: small React Context/provider.
- Server data: feature hooks + API client; start simple.
- Local form/UI state: component state.
- Do **not** add Redux/Zustand/TanStack Query automatically. Add a library only when repeated server-cache/state problems justify it.

## Rules

- Curriculum order/mastery/planner logic comes from API, not duplicated in React.
- Route pages compose feature components; components should not call unrelated domain APIs directly.
- Shared component goes into `components/` only after genuine reuse.
- API base URL comes from environment config.
- Error handling uses the common API error model.

## Styling

Choose one understandable approach for the project (plain CSS/CSS modules or a small utility framework if team already knows it). Do not mix several UI systems.
