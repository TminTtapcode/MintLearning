# Feature Catalog

Feature ID là mã ổn định để Product, UX, Engineering và QA cùng tham chiếu.

| ID | Feature | Purpose | MVP | Depends on |
|---|---|---|---|---|
| F-001 | Register/Login | Xác định learner state theo user | Must | — |
| F-002 | Explore IT Map | Giúp người mới hiểu kiến trúc phần mềm | Must | — |
| F-003 | Role Detail | Giải thích Frontend/Backend/DB/API/DevOps | Must | F-002 |
| F-004 | Goal Selection | Chọn Backend Java Foundation | Must | F-002 |
| F-005 | Diagnostic | Ước lượng kiến thức hiện tại | Must | F-004, curriculum |
| F-006 | Personal Roadmap | Hiển thị concept graph + state | Must | F-004, concept graph |
| F-007 | Today Session | Đưa ra việc nên học hôm nay | Must | F-006, planner |
| F-008 | Learning Workspace | Học resource + explanation + example | Must | learning unit |
| F-009 | Guided Practice | Làm bài có gợi ý | Must | F-008 |
| F-010 | Independent Practice | Tự giải bài | Must | F-008 |
| F-011 | Assessment | Kiểm tra hiểu biết | Must | question bank |
| F-012 | Mastery Tracking | Cập nhật state theo evidence | Must | F-011 |
| F-013 | Review Scheduler | Lên lịch retrieval/review | Must | F-012 |
| F-014 | Review Session | Ôn concept due | Must | F-013 |
| F-015 | Progress | Xem strong/learning/weak/due | Must | F-012 |
| F-016 | Study Preferences | Quỹ thời gian, số buổi/tuần | Must | F-001 |
| F-017 | Resume Session | Tiếp tục buổi đang dở | Should | F-007 |
| F-018 | Lite Session | Tạo buổi 10–15 phút | Should | F-007 |
| F-019 | Remediation | Bài củng cố sau lỗi lặp | Should | F-011 |
| F-020 | AI Explanation | Giải thích bổ sung theo concept | Could | curated content |
| F-021 | AI Hint | Gợi ý từng bước | Could | practice |
| F-022 | Content Admin UI | Quản trị curriculum bằng UI | Won't MVP | content model |
| F-023 | Social/Leaderboard | Tương tác cạnh tranh | Won't MVP | — |
| F-024 | Native Mobile App | iOS/Android riêng | Won't MVP | — |

## Status convention

- `Proposed`: đã có ý tưởng nhưng chưa refine.
- `Ready`: đủ Definition of Ready.
- `In Progress`: đang phát triển.
- `QA`: implementation xong, đang verify.
- `Done`: đạt Definition of Done.
- `Deferred`: không thuộc release hiện tại.
