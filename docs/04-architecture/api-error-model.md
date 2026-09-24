# API Error Model

Mọi lỗi API business/validation dùng một shape thống nhất.

```json
{
  "code": "VALIDATION_ERROR",
  "message": "Some fields are invalid.",
  "fieldErrors": {
    "minutesPerSession": "must be between 10 and 240"
  },
  "traceId": "optional-request-id"
}
```

## Common codes

- `VALIDATION_ERROR` → 400
- `AUTHENTICATION_REQUIRED` → 401
- `ACCESS_DENIED` → 403
- `RESOURCE_NOT_FOUND` → 404
- `CONFLICT` → 409
- `CONTENT_NOT_PUBLISHED` → 409/404 tùy endpoint internal/public
- `INVALID_STATE_TRANSITION` → 409
- `INTERNAL_ERROR` → 500

## Rules

- Không trả stack trace cho client.
- `message` thân thiện nhưng không lộ security detail.
- Validation field-level trả `fieldErrors`.
- Frontend không parse raw exception string để quyết định behavior.
