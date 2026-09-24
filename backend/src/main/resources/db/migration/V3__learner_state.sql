CREATE TABLE user_goals (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    learning_path_id BIGINT,
    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    started_at DATETIME NOT NULL,
    CONSTRAINT fk_ug_users FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_ug_paths FOREIGN KEY (learning_path_id) REFERENCES learning_paths(id)
);

CREATE TABLE user_concept_states (
    user_id BIGINT,
    concept_id BIGINT,
    state VARCHAR(30) NOT NULL,
    mastery_score INT NOT NULL DEFAULT 0,
    confidence VARCHAR(20) NOT NULL DEFAULT 'LOW',
    last_evidence_at DATETIME NULL,
    last_review_at DATETIME NULL,
    next_review_at DATETIME NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (user_id, concept_id),
    CONSTRAINT fk_ucs_users FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_ucs_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);

CREATE TABLE learning_evidence (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    concept_id BIGINT,
    source_type VARCHAR(30) NOT NULL,
    source_id BIGINT NULL,
    result VARCHAR(20) NOT NULL,
    score DECIMAL(5,4) NULL,
    hint_used BOOLEAN NULL,
    delay_days INT NULL,
    created_at DATETIME NOT NULL,
    CONSTRAINT fk_le_users FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_le_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);
CREATE INDEX idx_learning_evidence_u_c_d ON learning_evidence(user_id, concept_id, created_at);

CREATE TABLE review_schedules (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    concept_id BIGINT,
    due_at DATETIME NOT NULL,
    interval_days INT NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'DUE',
    last_result VARCHAR(20) NULL,
    CONSTRAINT fk_rs_users FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_rs_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);

CREATE TABLE learning_sessions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    session_date DATE NOT NULL,
    time_budget_minutes INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    started_at DATETIME NULL,
    completed_at DATETIME NULL,
    created_at DATETIME NOT NULL,
    CONSTRAINT fk_ls_users FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE learning_session_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    session_id BIGINT,
    item_type VARCHAR(30) NOT NULL,
    reference_id BIGINT NOT NULL,
    estimated_minutes INT NOT NULL,
    display_order INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_lsi_sessions FOREIGN KEY (session_id) REFERENCES learning_sessions(id)
);

CREATE TABLE assessment_attempts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    assessment_id BIGINT,
    score DECIMAL(5,4) NULL,
    status VARCHAR(20) NOT NULL,
    started_at DATETIME NOT NULL,
    submitted_at DATETIME NULL,
    CONSTRAINT fk_aa_users FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_aa_assessments FOREIGN KEY (assessment_id) REFERENCES assessments(id)
);

CREATE TABLE question_attempts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    assessment_attempt_id BIGINT,
    question_id BIGINT,
    answer_json JSON NULL,
    result VARCHAR(20) NOT NULL,
    score DECIMAL(5,4) NULL,
    answered_at DATETIME NOT NULL,
    CONSTRAINT fk_qa_attempts FOREIGN KEY (assessment_attempt_id) REFERENCES assessment_attempts(id),
    CONSTRAINT fk_qa_questions FOREIGN KEY (question_id) REFERENCES questions(id)
);
