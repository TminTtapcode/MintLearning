# Decision Log

| ID | Decision | Status | Owner | Notes |
|---|---|---|---|---|
| D-001 | MVP learning path = Backend Java Foundation | Approved | Product | Giữ scope sâu thay vì rộng |
| D-002 | Frontend = React + TypeScript | Approved | Engineering | Baseline |
| D-003 | Backend = Spring Boot | Approved | Engineering | Baseline |
| D-004 | Database = MySQL | Approved | Engineering | Workbench chỉ là client/admin tool |
| D-005 | MVP architecture = Modular Monolith | Approved | Architecture | ADR-0001 |
| D-006 | Review scheduler v1 dùng rule-based heuristic | Approved | Learning/Product | Chưa dùng ML |
| D-007 | Diagnostic có thể skip và bắt đầu từ cơ bản | Approved | Product/UX | Giảm friction |
| D-008 | Redis chỉ thêm khi có measured need | Approved | Architecture | Không baseline bắt buộc |
| D-009 | Exact Spring Boot/React versions | Open | Engineering | Chốt lúc scaffold và ghi ADR nếu ảnh hưởng |
| D-010 | Authentication provider/library | Open | Engineering/Product | Cần threat model trước |

Mọi quyết định mới có ảnh hưởng cross-cutting phải thêm hàng mới trước hoặc cùng PR thay đổi.
