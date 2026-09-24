# Difficulty Model

MVP không dùng ML để tính difficulty. Content editor gắn độ khó ban đầu và hệ thống điều chỉnh activity theo performance.

## Content difficulty

- `D1 — Intro`: nhận biết/giải thích bằng ví dụ trực tiếp.
- `D2 — Apply`: áp dụng trong bài tương tự worked example.
- `D3 — Transfer`: áp dụng trong tình huống mới hoặc kết hợp 2–3 concept.

MVP không cần D4/D5 kiểu algorithm interview nâng cao.

## Learner adaptation

Nếu user sai D2 nhiều lần:

1. quay lại explanation ngắn;
2. đưa worked example;
3. chuyển sang guided practice D1/D2;
4. kiểm tra lại bằng câu tương tự nhưng không trùng đáp án.

Nếu user đúng D1/D2 ổn định và delayed review tốt, planner có thể ưu tiên D3 hoặc concept kế tiếp.

## Rule

Không dùng response time đơn lẻ để kết luận user yếu. Thời gian chỉ là tín hiệu phụ vì có thể bị ảnh hưởng bởi gián đoạn, đọc chậm hoặc môi trường.
