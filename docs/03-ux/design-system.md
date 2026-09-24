# Minimal Design System

Mục tiêu: đủ nhất quán để frontend dễ làm, không xây design system enterprise.

## Layout

- Desktop max content width khoảng 1200px.
- Sidebar cố định trên desktop; mobile dùng bottom nav hoặc drawer.
- Main learning content ưu tiên chiều rộng đọc dễ chịu, không kéo full screen cho text dài.

## Spacing

Dùng scale đơn giản: `4, 8, 12, 16, 24, 32, 48` px.

## Typography

- Page title
- Section title
- Body
- Helper/meta
- Code/technical text dùng monospace

Không cần nhiều font family.

## Core components

- Button: Primary / Secondary / Text / Danger
- Card
- Tabs/segmented control khi thật sự cần
- Input, Select, Checkbox
- Modal/Drawer
- Progress bar
- Concept status badge
- Resource card
- Practice card
- Quiz option
- Feedback panel
- Empty state
- Error state
- Skeleton/loading

## Learning status labels

- Not started
- Learning
- Practicing
- Strong
- Review due
- Needs reinforcement

Không dùng màu làm tín hiệu duy nhất; luôn có text/icon.

## Interaction

- Primary screen chỉ nên có một primary action nổi bật.
- Destructive action yêu cầu confirm khi ảnh hưởng dữ liệu.
- Auto-save phải có trạng thái `Saving…` / `Saved` nhỏ, không dùng toast liên tục.

## Accessibility baseline

- Keyboard navigation cho action chính.
- Visible focus.
- Label cho form control.
- Contrast đủ đọc.
- Icon quan trọng có accessible label.
- Error message gắn trực tiếp với field.
