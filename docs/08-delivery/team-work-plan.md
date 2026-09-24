# Cross-functional Team Work Plan

Một nhóm sinh viên có thể ít người hơn số “phòng ban”; một người có thể giữ nhiều vai. Quan trọng là responsibility và deliverable rõ.

| Workstream | Main responsibility | Key outputs |
|---|---|---|
| Product/BA | Scope, rules, acceptance | PRD, business rules, backlog |
| Learning/Content | Curriculum quality | graph, unit, assessment, review rules |
| UX/UI | Flow and usability | screens, wireframes, prototype/test findings |
| Architecture/Backend | Domain/data/API | schema, services, auth, migrations |
| Frontend | User experience | routes, pages, API integration, states |
| QA | Risk/verification | test scenarios, regression, release gate |
| DevOps | Reproducible delivery | local env, CI, Docker, release |

## Recommended student team split example — 5 people

1. Product/UX lead + frontend support.
2. Learning/content lead + QA content.
3. Backend lead — auth/curriculum/learning APIs.
4. Backend/data lead — mastery/review/planner/database.
5. Frontend/DevOps/QA automation lead.

Không khóa cứng ownership: feature được review chéo và phát triển theo vertical slice.

## Weekly rhythm

- Start of week: backlog refinement + Sprint Goal.
- During week: vertical slice implementation, short sync when blockers exist.
- Before merge: review + tests + docs drift check.
- End of sprint: demo user journey, not just code files; retrospective ngắn.
