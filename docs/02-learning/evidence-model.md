# Learning Evidence Model

`Evidence` là dữ liệu cho biết người học đã làm gì và kết quả thế nào. Mastery là projection từ evidence, không phải boolean hoàn thành bài.

## Evidence types

| Type | Meaning | Default strength |
|---|---|---|
| RESOURCE_VIEW | Đã mở/đọc tài liệu | Very low |
| EXAMPLE_CHECK | Trả lời câu hỏi sau worked example | Low |
| GUIDED_PRACTICE | Làm bài có hint/scaffold | Medium-low |
| INDEPENDENT_PRACTICE | Tự làm bài | Medium-high |
| QUIZ | Kiểm tra ngay sau học | Medium |
| RETRIEVAL | Kiểm tra sau khoảng thời gian | High |
| PROJECT_CHECKPOINT | Áp dụng concept trong mini project | High |

## Minimal evidence record

- `userId`
- `conceptId`
- `sourceType`
- `sourceId`
- `result` (`CORRECT`, `PARTIAL`, `INCORRECT`, `COMPLETED`)
- `score` nullable 0–1
- `attemptedAt`
- `hintUsed` nullable
- `delayDays` nullable cho retrieval

## MVP weighting guideline

Không cần công thức khoa học giả. Heuristic khởi đầu:

- resource view: +0 đến +2
- guided practice correct: +4
- independent practice correct: +7
- immediate quiz correct: +6
- delayed retrieval correct: +9
- incorrect independent/retrieval: -5 đến -8

Score được clamp `0..100` và dùng kết hợp với evidence count để suy state. Các con số là product heuristic, phải được điều chỉnh bằng testing chứ không gọi là “độ hiểu thật 78%”.

## Guardrails

- Một resource view không bao giờ tự tạo `STRONG`.
- Cần evidence từ ít nhất hai activity phù hợp trước khi mastery mạnh.
- Một lần sai không xóa sạch tiến bộ.
- History append-only; `UserConceptState` là projection hiện tại.
