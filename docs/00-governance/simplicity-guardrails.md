# Simplicity Guardrails — Student Project

Mục tiêu của project là **hệ thống hoàn chỉnh về flow và business logic**, không phải chứng minh số lượng công nghệ.

## Default choices

- 1 React frontend.
- 1 Spring Boot backend.
- 1 MySQL database.
- REST/JSON.
- Flyway migrations.
- Docker Compose.
- Rule-based planner/mastery.
- Curriculum seed bằng YAML/Markdown.

## Do not add by default

- Microservices.
- Kafka/RabbitMQ.
- Redis nếu chưa có bottleneck/use case cụ thể.
- Elasticsearch.
- Graph database.
- Kubernetes.
- CQRS/Event Sourcing.
- Generic repository/service framework tự viết.
- Full code execution sandbox.
- ML model cho recommendation/mastery.

## Abstraction rule

Chỉ tạo abstraction khi ít nhất một trong các điều sau đúng:
- có 2 implementation thật;
- cần isolate external dependency;
- logic đủ phức tạp để test boundary có lợi;
- duplication đã xuất hiện và refactor làm code rõ hơn.

Không tạo interface cho mọi service/repository chỉ vì “best practice”.

## Complexity check for agents

Trước khi thêm dependency/component mới, trả lời:
1. Problem cụ thể là gì?
2. Spring/React/MySQL hiện tại giải được không?
3. Complexity mới giúp user outcome nào?
4. Sinh viên trong team có debug được không?
5. Có test được dễ hơn hay khó hơn?

Nếu không có câu trả lời rõ, chọn solution đơn giản hơn.
