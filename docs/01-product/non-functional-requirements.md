# Non-Functional Requirements

## Usability

- Primary navigation tối đa 6 tab cho MVP.
- Today page phải có một primary CTA rõ ràng.
- Mọi async flow có loading/error/retry.
- Resume unfinished session.

## Accessibility

- Keyboard navigation cho core flows.
- Semantic HTML, visible focus, labeled controls.
- Không phụ thuộc màu duy nhất để truyền trạng thái.

## Performance

- Core app shell và Today view phải phản hồi nhanh trên mạng phổ thông; performance budget cụ thể sẽ được đo sau prototype.
- API list endpoints phải pagination khi data có thể tăng.

## Security

- Authorization server-side.
- Password không lưu plaintext.
- Secrets không commit.
- User learning data không được truy cập bằng client-supplied userId nếu đã có authenticated identity.

## Maintainability

- Module boundaries rõ.
- Domain logic có tests.
- Migration database versioned.
- ADR cho quyết định architecture quan trọng.

## Observability

- Structured logs.
- Correlation/request id.
- Error monitoring trước beta.
