# Bootstrap Local Environment

## Step 1 — Database first

`docker compose up -d mysql`

MySQL Workbench có thể kết nối `localhost:3306` để inspect. Không tạo schema thủ công làm source of truth.

## Step 2 — Backend

- configure DB URL/user/password từ environment;
- start Spring Boot;
- Flyway migrates automatically;
- verify health endpoint.

## Step 3 — Frontend

- `npm install`
- `npm run dev`
- configure API base URL bằng environment.

## Step 4 — Smoke

- register;
- login;
- call `/users/me`;
- open Explore.

## Why Docker only MySQL first

Sinh viên debug frontend/backend dễ hơn khi chạy trực tiếp bằng IDE. Sau khi integration ổn, đóng gói backend/frontend vào Docker theo `docker-strategy.md`.
