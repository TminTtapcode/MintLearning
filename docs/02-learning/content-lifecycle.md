# Content Lifecycle

MVP không cần CMS phức tạp. Content có thể được quản lý bằng Markdown/YAML trong repository.

## States

`DRAFT → REVIEW → PUBLISHED → DEPRECATED`

## Responsibilities

- Author: tạo concept/unit/resource/question.
- Learning reviewer: kiểm tra objective, prerequisite, difficulty, pedagogy.
- Technical reviewer: kiểm tra nội dung kỹ thuật và link.
- Publisher: đổi trạng thái sang PUBLISHED.

Một người trong nhóm sinh viên có thể giữ nhiều vai, nhưng checklist phải được thực hiện.

## Publication checks

- Concept id duy nhất.
- Prerequisite không cycle.
- Objective có thể đánh giá.
- Resource có source/title/url/section focus.
- Practice phù hợp objective.
- Assessment map tới concept.
- Answer/explanation đã verify.
- Không có link chết ở thời điểm review.
- `lastVerifiedAt` được cập nhật.

## Deprecation

Không xóa content đã có attempt. Đánh dấu `DEPRECATED` và thay bằng content mới nếu cần để giữ lịch sử.
