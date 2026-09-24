# Local Development

Mục tiêu: một sinh viên mới clone repo có thể chạy hệ thống với ít bước.

## Required tools

- JDK phù hợp với Spring Boot version đã chọn.
- Maven wrapper (`./mvnw`) nên commit vào repo.
- Node.js LTS + npm.
- Docker Desktop hoặc Docker Engine cho MySQL container.
- MySQL Workbench tùy chọn để xem database.

## Recommended flow

1. Copy `.env.example` → `.env` nếu project dùng env file local.
2. `docker compose up -d mysql`
3. Chạy backend bằng Maven.
4. Flyway tự migrate DB khi backend start.
5. Chạy frontend bằng npm/Vite.
6. Mở app, register test user.

## Ports suggestion

- Frontend: 5173
- Backend: 8080
- MySQL: 3306

Nếu port conflict, đổi ở local config nhưng không hardcode URL trong source.

## Seed

Development profile có thể import curriculum từ `curriculum/backend-java/*.yaml` bằng seed/import service. Không chạy seeder phá dữ liệu ở production profile.

## Verification

- `GET /actuator/health` hoặc health endpoint đơn giản trả UP.
- Migration history tồn tại.
- Frontend gọi được backend.
- Register/login hoạt động.
