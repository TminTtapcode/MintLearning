# Content Validation

## Automated checks where practical

A small validation script may check YAML curriculum for:
- duplicate concept IDs;
- unknown prerequisite IDs;
- self dependency;
- graph cycle;
- resource missing URL/focus/verified date;
- learning path references missing concepts.

## Human checks

Automation cannot verify technical truth or pedagogical quality. Human reviewer checks:
- concept accuracy;
- objective alignment;
- worked example correctness;
- answer/explanation correctness;
- difficulty fit;
- wording appropriate for novice.

## CI

Curriculum validation script should run in CI once YAML becomes source data for application seed.
