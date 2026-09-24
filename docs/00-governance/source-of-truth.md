# Source of Truth & Change Ownership

## Canonical sources

| Content | Source of truth | Owner |
|---|---|---|
| Product goal/scope | `docs/01-product/prd.md`, `mvp-scope.md` | Product |
| Business behavior | `docs/01-product/business-rules.md`, feature specs | Product/BA |
| Learning methodology | `docs/02-learning/` | Learning/Research |
| Curriculum data | `curriculum/backend-java/` + published DB import | Learning/Content |
| UX/navigation | `docs/03-ux/` | UX/Product |
| Architecture | `docs/04-architecture/` + accepted ADR | Engineering |
| AI behavior | `docs/05-data-ai/` | Product + Learning + Engineering |
| QA/release gates | `docs/06-quality/` | QA |
| Environments/deployment | `docs/07-devops/` | DevOps/Engineering |
| Delivery order/status | `docs/08-delivery/` | Product + Engineering |

## Conflict order

1. Accepted ADR for technical decision.
2. Explicit product/business rule for behavior.
3. Learning rule for pedagogy/mastery/review.
4. UX screen contract for interaction.
5. API/database contract for implementation.
6. Task plan.

A lower-level artifact cannot silently redefine a higher-level rule.

## Change rule

- Copy/visual text nhỏ → UX if behavior unchanged.
- User flow → Product + UX.
- Mastery/review/curriculum → Learning + Product.
- API/schema/architecture → Engineering; ADR when trade-off is meaningful.
- Security model → Engineering + QA.
- Agent cannot independently change cross-domain behavior.

## Code vs spec

When code and spec disagree, create a finding. Determine intended behavior, then change code or update canonical spec intentionally. Do not assume whichever is newer is automatically correct.
