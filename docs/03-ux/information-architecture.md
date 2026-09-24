# Information Architecture

## Primary navigation

Sau onboarding, desktop sidebar gồm 6 tab cố định:

1. **Explore** — hiểu hệ thống IT và các vai trò.
2. **Today** — công việc học nên làm ngay.
3. **Roadmap** — xem đường đi và prerequisite.
4. **Learn** — tiếp tục learning unit hiện tại / thư viện unit đã mở.
5. **Review** — kiến thức cần ôn.
6. **Progress** — trạng thái kiến thức và tiến triển.

User menu chứa Profile, Study Preferences, Logout.

## Navigation principles

- `Today` là landing page sau khi user đã có goal.
- `Explore` vẫn truy cập được sau onboarding.
- `Roadmap` không khóa việc preview.
- `Learn` không trở thành catalog khóa học rộng ở MVP.
- `Review` tách riêng để người học hiểu đây là hoạt động duy trì kiến thức.
- Không tạo tab riêng cho Quiz/Exercise; chúng thuộc Learning Workspace.

## Route suggestion

```text
/
/login
/register
/onboarding
/explore
/today
/roadmap
/learn
/learn/:unitId
/review
/progress
/settings
```
