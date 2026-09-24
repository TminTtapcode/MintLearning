# Mastery Calculation v1

## Purpose

Mastery v1 là heuristic **dễ giải thích và unit-test**, không phải mô hình tâm lý hay ML.

## Stored values

`UserConceptState`:
- `masteryScore` 0..100
- `state`
- `confidence` LOW/MEDIUM/HIGH
- timestamps review/evidence

Lịch sử thật nằm ở `learning_evidence`; state hiện tại có thể tính lại.

## Evidence deltas — initial defaults

| Evidence | Correct/complete | Incorrect |
|---|---:|---:|
| RESOURCE_VIEW | +1 | 0 |
| EXAMPLE_CHECK | +3 | -2 |
| GUIDED_PRACTICE | +4 | -3 |
| INDEPENDENT_PRACTICE | +7 | -6 |
| QUIZ | +6 | -5 |
| RETRIEVAL | +9 | -8 |
| PROJECT_CHECKPOINT | +10 | -7 |

Nếu dùng hint mạnh, positive delta có thể giảm 1–3 điểm.

## State thresholds

Threshold chỉ áp dụng khi có evidence count phù hợp:

- `NOT_STARTED`: chưa có meaningful evidence.
- `INTRODUCED`: score < 30 hoặc chỉ mới resource/example.
- `LEARNING`: score 30–54.
- `PRACTICING`: score 55–74.
- `STRONG`: score >= 75 **và** có ít nhất 1 independent/quiz + 1 retrieval hoặc project evidence đúng.
- `REVIEW_DUE`: concept trước đó đủ ổn nhưng `nextReviewAt <= now`.
- `NEEDS_REINFORCEMENT`: repeated incorrect/retrieval failure hoặc score giảm dưới threshold sau khi từng cao hơn.

## Confidence

- LOW: <2 meaningful evidence hoặc evidence mâu thuẫn mạnh.
- MEDIUM: >=2 meaningful evidence.
- HIGH: có delayed retrieval success + nhiều nguồn evidence.

## Pseudocode

```text
record evidence
score = clamp(oldScore + delta(evidence), 0, 100)
state = deriveState(score, evidenceHistory, reviewDue)
confidence = deriveConfidence(evidenceHistory)
save UserConceptState
```

## Important

Không hiển thị `82% hiểu bài` như một fact. UI có thể ưu tiên label `Practicing/Strong/Needs review`; raw score dành cho algorithm/debug.
