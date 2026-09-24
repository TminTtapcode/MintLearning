# E2E Test Strategy

E2E chỉ cover critical user journeys để suite nhanh và dễ bảo trì.

## E2E-01 First-time learner

Register → Explore → choose Backend Java → skip diagnostic → Today visible.

## E2E-02 Diagnostic path

Login → start diagnostic → answer sample set → complete → roadmap state changes.

## E2E-03 Learning loop

Today → open unit → practice → assessment → result → concept state updated → review scheduled.

## E2E-04 Review loop

Review tab → answer retrieval → result → next review changes.

## E2E-05 Recovery

User changes today time budget to 10 minutes → regenerate → short session contains reasonable priority items and no overdue debt.

## Tooling

Playwright là lựa chọn gợi ý nếu team cần browser E2E. Chỉ thêm khi core UI đã ổn; không để setup E2E chặn Phase 4 bootstrap.
