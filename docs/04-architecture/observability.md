# Observability

## Logs

Structured fields tối thiểu:

- timestamp
- level
- service/module
- requestId/correlationId
- authenticatedUserId khi hợp lệ và không làm lộ dữ liệu nhạy cảm
- event/code

Không log password, token, full sensitive payload.

## Metrics

- API latency/error rate.
- Assessment submit failures.
- Planner generation failures.
- Broken resource fetch/check failures (nếu automated).

## Product analytics

Tách telemetry sản phẩm khỏi operational logs. Event definitions ở `docs/05-data-ai/analytics-events.md`.
