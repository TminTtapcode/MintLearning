# Requirements Traceability

Matrix dùng để agent biết nên đọc đâu trước khi sửa feature.

| Epic | Product spec | UX | Backend/Domain | Quality |
|---|---|---|---|---|
| Explore/Goal | `features/epic-01-explore-goal.md` | `screens/explore.md` | explore/curriculum/user goal | acceptance + E2E-01 |
| Roadmap | `features/epic-02-roadmap.md` | `screens/roadmap.md` | curriculum/mastery | LF-05 |
| Diagnostic | `features/epic-03-diagnostic.md` | `screens/diagnostic.md` | diagnostic/mastery | E2E-02 |
| Learning | `features/epic-04-learning-workspace.md` | `screens/learn.md` | learning/curriculum | LF-01 |
| Assessment | `features/epic-05-assessment.md` | Learn workspace | assessment/mastery | integration ownership/duplicate submit |
| Mastery/Review | `features/epic-06-mastery-review.md` | `screens/review.md` | mastery/review | LF-02/03 |
| Today | `features/epic-07-today-planner.md` | `screens/today.md` | planner/session | LF-04/06, E2E-05 |
| Progress | `features/epic-08-progress.md` | `screens/progress.md` | progress/mastery | E2E learning loop |

## Rule

Nếu implementation thay đổi behavior ở một hàng, kiểm tra tất cả cột liên quan trước khi merge.
