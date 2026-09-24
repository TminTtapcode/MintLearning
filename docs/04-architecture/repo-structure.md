# Repository Structure

MVP dùng monorepo đơn giản để sinh viên dễ theo dõi.

```text
project/
├── AGENTS.md
├── PROJECT_CONTEXT.md
├── README.md
├── docs/
├── curriculum/
│   └── backend-java/
├── frontend/
│   ├── src/
│   ├── package.json
│   └── vite.config.*
├── backend/
│   ├── src/main/java/
│   ├── src/main/resources/
│   ├── src/test/java/
│   └── pom.xml
├── docker/
├── compose.yaml
├── .env.example
└── .github/workflows/ci.yml
```

## Rule

Không tách nhiều repository ở MVP. Documentation, curriculum seed, frontend và backend nên ở cùng repo để một PR có thể thay đổi vertical slice end-to-end.
