# Database Schema — MVP

MySQL là source database. Flyway migration là source of truth cho schema; MySQL Workbench chỉ dùng để inspect/query thủ công.

## 1. Identity

### `users`
- `id BIGINT PK AUTO_INCREMENT`
- `email VARCHAR(255) NOT NULL UNIQUE`
- `password_hash VARCHAR(255) NOT NULL`
- `display_name VARCHAR(100) NOT NULL`
- `role VARCHAR(30) NOT NULL DEFAULT 'STUDENT'`
- `status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE'`
- `created_at DATETIME NOT NULL`
- `updated_at DATETIME NOT NULL`

### `user_study_preferences`
- `user_id BIGINT PK FK users(id)`
- `minutes_per_session INT NOT NULL DEFAULT 60`
- `sessions_per_week INT NOT NULL DEFAULT 4`
- `timezone VARCHAR(64) NOT NULL DEFAULT 'Asia/Ho_Chi_Minh'`
- `updated_at DATETIME NOT NULL`

Constraints: minutes 10–240, sessions 1–7 enforced in service/validation; DB CHECK nếu MySQL version/project setup hỗ trợ đáng tin cậy.

## 2. Curriculum

### `career_paths`
- `id BIGINT PK`
- `slug VARCHAR(100) UNIQUE NOT NULL`
- `title VARCHAR(150) NOT NULL`
- `description TEXT`
- `status VARCHAR(20) NOT NULL`

### `learning_paths`
- `id BIGINT PK`
- `career_path_id BIGINT FK career_paths(id)`
- `slug VARCHAR(100) UNIQUE NOT NULL`
- `title VARCHAR(150) NOT NULL`
- `version INT NOT NULL DEFAULT 1`
- `status VARCHAR(20) NOT NULL`

### `concepts`
- `id BIGINT PK`
- `concept_key VARCHAR(120) UNIQUE NOT NULL` — ví dụ `web.http`
- `title VARCHAR(150) NOT NULL`
- `concept_type VARCHAR(30) NOT NULL`
- `level VARCHAR(30) NOT NULL`
- `summary TEXT`
- `why_it_matters TEXT`
- `estimated_minutes INT`
- `status VARCHAR(20) NOT NULL`

### `concept_prerequisites`
- `concept_id BIGINT FK concepts(id)`
- `prerequisite_concept_id BIGINT FK concepts(id)`
- composite PK `(concept_id, prerequisite_concept_id)`
- self-edge forbidden in service/import validation

### `learning_path_concepts`
- `learning_path_id BIGINT FK learning_paths(id)`
- `concept_id BIGINT FK concepts(id)`
- `module_key VARCHAR(100) NOT NULL`
- `display_order INT NOT NULL`
- composite PK `(learning_path_id, concept_id)`

### `resources`
- `id BIGINT PK`
- `concept_id BIGINT FK concepts(id)`
- `title VARCHAR(255) NOT NULL`
- `provider VARCHAR(150)`
- `resource_type VARCHAR(30) NOT NULL`
- `url VARCHAR(1000) NOT NULL`
- `focus_note TEXT NOT NULL`
- `skip_note TEXT`
- `authority VARCHAR(30)`
- `last_verified_at DATE`
- `status VARCHAR(20) NOT NULL`

### `learning_units`
- `id BIGINT PK`
- `slug VARCHAR(150) UNIQUE NOT NULL`
- `title VARCHAR(255) NOT NULL`
- `primary_concept_id BIGINT FK concepts(id)`
- `why_it_matters TEXT NOT NULL`
- `objectives_json JSON NOT NULL`
- `estimated_minutes INT NOT NULL`
- `status VARCHAR(20) NOT NULL`

### `learning_unit_resources`
- `learning_unit_id BIGINT FK learning_units(id)`
- `resource_id BIGINT FK resources(id)`
- `display_order INT NOT NULL`
- composite PK `(learning_unit_id, resource_id)`

### `exercises`
- `id BIGINT PK`
- `learning_unit_id BIGINT FK learning_units(id)`
- `concept_id BIGINT FK concepts(id)`
- `exercise_type VARCHAR(30) NOT NULL`
- `difficulty VARCHAR(10) NOT NULL`
- `prompt TEXT NOT NULL`
- `starter_content TEXT`
- `expected_answer TEXT`
- `explanation TEXT`
- `display_order INT NOT NULL`
- `status VARCHAR(20) NOT NULL`

### `assessments`
- `id BIGINT PK`
- `learning_unit_id BIGINT NULL FK learning_units(id)`
- `assessment_type VARCHAR(30) NOT NULL`
- `title VARCHAR(255) NOT NULL`
- `status VARCHAR(20) NOT NULL`

### `questions`
- `id BIGINT PK`
- `assessment_id BIGINT FK assessments(id)`
- `question_type VARCHAR(30) NOT NULL`
- `prompt TEXT NOT NULL`
- `options_json JSON NULL`
- `answer_json JSON NOT NULL`
- `explanation TEXT NOT NULL`
- `difficulty VARCHAR(10) NOT NULL`

### `question_concepts`
- `question_id BIGINT FK questions(id)`
- `concept_id BIGINT FK concepts(id)`
- composite PK `(question_id, concept_id)`

## 3. Learner state

### `user_goals`
- `id BIGINT PK AUTO_INCREMENT`
- `user_id BIGINT FK users(id)`
- `learning_path_id BIGINT FK learning_paths(id)`
- `status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE'`
- `started_at DATETIME NOT NULL`
- unique active goal enforced in service for MVP

### `user_concept_states`
- `user_id BIGINT FK users(id)`
- `concept_id BIGINT FK concepts(id)`
- `state VARCHAR(30) NOT NULL`
- `mastery_score INT NOT NULL DEFAULT 0`
- `confidence VARCHAR(20) NOT NULL DEFAULT 'LOW'`
- `last_evidence_at DATETIME NULL`
- `last_review_at DATETIME NULL`
- `next_review_at DATETIME NULL`
- `updated_at DATETIME NOT NULL`
- composite PK `(user_id, concept_id)`

### `learning_evidence`
- `id BIGINT PK AUTO_INCREMENT`
- `user_id BIGINT FK users(id)`
- `concept_id BIGINT FK concepts(id)`
- `source_type VARCHAR(30) NOT NULL`
- `source_id BIGINT NULL`
- `result VARCHAR(20) NOT NULL`
- `score DECIMAL(5,4) NULL`
- `hint_used BOOLEAN NULL`
- `delay_days INT NULL`
- `created_at DATETIME NOT NULL`

Index: `(user_id, concept_id, created_at)`.

### `review_schedules`
- `id BIGINT PK AUTO_INCREMENT`
- `user_id BIGINT FK users(id)`
- `concept_id BIGINT FK concepts(id)`
- `due_at DATETIME NOT NULL`
- `interval_days INT NOT NULL`
- `status VARCHAR(20) NOT NULL DEFAULT 'DUE'`
- `last_result VARCHAR(20) NULL`
- unique active schedule per `(user_id, concept_id)` enforced in service/unique strategy.

## 4. Sessions and attempts

### `learning_sessions`
- `id BIGINT PK AUTO_INCREMENT`
- `user_id BIGINT FK users(id)`
- `session_date DATE NOT NULL`
- `time_budget_minutes INT NOT NULL`
- `status VARCHAR(20) NOT NULL`
- `started_at DATETIME NULL`
- `completed_at DATETIME NULL`
- `created_at DATETIME NOT NULL`

### `learning_session_items`
- `id BIGINT PK AUTO_INCREMENT`
- `session_id BIGINT FK learning_sessions(id)`
- `item_type VARCHAR(30) NOT NULL` — REVIEW/LEARN/PRACTICE/ASSESS
- `reference_id BIGINT NOT NULL`
- `estimated_minutes INT NOT NULL`
- `display_order INT NOT NULL`
- `status VARCHAR(20) NOT NULL`

### `assessment_attempts`
- `id BIGINT PK AUTO_INCREMENT`
- `user_id BIGINT FK users(id)`
- `assessment_id BIGINT FK assessments(id)`
- `score DECIMAL(5,4) NULL`
- `status VARCHAR(20) NOT NULL`
- `started_at DATETIME NOT NULL`
- `submitted_at DATETIME NULL`

### `question_attempts`
- `id BIGINT PK AUTO_INCREMENT`
- `assessment_attempt_id BIGINT FK assessment_attempts(id)`
- `question_id BIGINT FK questions(id)`
- `answer_json JSON NULL`
- `result VARCHAR(20) NOT NULL`
- `score DECIMAL(5,4) NULL`
- `answered_at DATETIME NOT NULL`

## Simplifications by design

- Không dùng event store.
- Không dùng separate graph database; prerequisite graph nằm trong MySQL adjacency table.
- JSON chỉ dùng cho fields tự nhiên có cấu trúc nhỏ như options/objectives, không nhét toàn domain vào JSON.
- Không tạo table riêng cho mọi subtype nếu chưa cần.
