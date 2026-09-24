# Functional Requirements

## FR-01 Explore IT

- Hiển thị kiến trúc trực quan client/frontend/API/backend/database/infrastructure.
- Node có thể click.
- Mỗi node giải thích role, data flow, examples, concepts, related careers.

## FR-02 Goal Selection

- Chọn learning direction sau hoặc trong Explore.
- MVP chỉ cho phép enrollment chính thức vào Backend Java Foundation; các path khác có thể ở trạng thái “planned/explore only”.

## FR-03 Diagnostic

- Có thể skip để bắt đầu cơ bản.
- Câu hỏi map về concept.
- Kết quả tạo learner-state ban đầu với confidence, không chỉ một total score.

## FR-04 Roadmap

- Hiển thị concept graph theo progression.
- Cho preview concept sau.
- Hiển thị current/strong/weak/review-due/upcoming.

## FR-05 Today

- Tạo session theo available time.
- Mix review + new + practice + check tùy trạng thái.
- Có 10/30/60/custom duration mode.

## FR-06 Learn

- Learning unit hiển thị objective, why it matters, selected resource sections, explanation, worked example.

## FR-07 Practice

- Guided và independent practice.
- Hint không lộ full answer ngay mặc định.

## FR-08 Assessment

- Retrieval/scenario/code-reading/debugging tùy concept.
- Lưu per-concept evidence.

## FR-09 Mastery & Review

- Update UserConceptState sau evidence.
- Schedule review.
- Wrong answer có targeted remediation.

## FR-10 Adaptive Planning

- Miss day không tạo debt cứng.
- Recalculate next session dựa availability + due review + prerequisites + goal.

## FR-11 Progress

- Phân biệt learning progress, mastery, review due.
- Không dùng streak reset làm primary motivator.
