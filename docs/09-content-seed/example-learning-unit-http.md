# Example Learning Unit — HTTP Request & Response

## Why it matters

Backend chỉ có ý nghĩa khi người học hiểu request từ client đến server và response quay lại. Spring MVC sau này là implementation cụ thể của flow này.

## Concepts

- HTTP request
- HTTP response
- method
- URL
- headers/body
- status code

## Prerequisites

- Client/server concept
- Basic browser/web usage

## Objectives

Sau unit, learner có thể:

1. Vẽ/giải thích request-response flow không nhìn note.
2. Nhận diện method/URL/header/body trong sample cơ bản.
3. Giải thích ý nghĩa chung của 2xx/4xx/5xx và một số status phổ biến.

## Resource

Primary: MDN HTTP Overview

Focus:
- Components of HTTP-based systems
- HTTP flow
- HTTP messages

Skip for now:
- advanced proxy/caching/version details

## Worked example

`GET /users/10` → backend receives request → queries/creates response → returns e.g. `200` + JSON body.

## Guided practice

Cho một request mẫu và yêu cầu highlight method, path, headers, body; có hint labels.

## Independent practice

Mở browser DevTools Network, reload một trang, ghi lại Request URL, Method, Status và một Response Header.

## Retrieval check

Không mở tài liệu:

- Backend và frontend giao tiếp qua flow gì?
- Request và response khác nhau thế nào?
- GET/POST khác nhau ở mục đích cơ bản nào?
- 404 thường biểu thị điều gì?

## Review intent

Nếu independent + retrieval tốt: interval tăng. Nếu lẫn headers/body hoặc status families: targeted review variant trước REST unit.
