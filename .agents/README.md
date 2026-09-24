# Antigravity Customization

Repository uses modern Antigravity workspace conventions:

- `AGENTS.md`: always-active root project guidance.
- `.agents/rules/*.md`: modular persistent rules with activation frontmatter.
- `.agents/skills/<name>/SKILL.md`: reusable task procedures.
- `.agents/agents/<name>/agent.md`: custom specialist agents.

Recommended usage:

- Planning a significant feature: `/plan-feature`
- Implementing an approved slice: `/deliver-vertical-slice`
- Writing curriculum: `/author-learning-unit`
- Pre-merge audit: `/review-feature`
- Release readiness: `/release-check`

Do not duplicate all docs into rules; rules should stay concise and docs remain the detailed source of truth.
