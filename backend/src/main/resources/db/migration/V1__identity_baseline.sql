CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    display_name VARCHAR(100) NOT NULL,
    role VARCHAR(30) NOT NULL DEFAULT 'STUDENT',
    status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

CREATE TABLE user_study_preferences (
    user_id BIGINT PRIMARY KEY,
    minutes_per_session INT NOT NULL DEFAULT 60,
    sessions_per_week INT NOT NULL DEFAULT 4,
    timezone VARCHAR(64) NOT NULL DEFAULT 'Asia/Ho_Chi_Minh',
    updated_at DATETIME NOT NULL,
    CONSTRAINT fk_usp_users FOREIGN KEY (user_id) REFERENCES users(id)
);
