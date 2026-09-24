CREATE TABLE career_paths (
    id BIGINT PRIMARY KEY,
    slug VARCHAR(100) UNIQUE NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE learning_paths (
    id BIGINT PRIMARY KEY,
    career_path_id BIGINT,
    slug VARCHAR(100) UNIQUE NOT NULL,
    title VARCHAR(150) NOT NULL,
    version INT NOT NULL DEFAULT 1,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_lp_career_paths FOREIGN KEY (career_path_id) REFERENCES career_paths(id)
);

CREATE TABLE concepts (
    id BIGINT PRIMARY KEY,
    concept_key VARCHAR(120) UNIQUE NOT NULL,
    title VARCHAR(150) NOT NULL,
    concept_type VARCHAR(30) NOT NULL,
    level VARCHAR(30) NOT NULL,
    summary TEXT,
    why_it_matters TEXT,
    estimated_minutes INT,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE concept_prerequisites (
    concept_id BIGINT,
    prerequisite_concept_id BIGINT,
    PRIMARY KEY (concept_id, prerequisite_concept_id),
    CONSTRAINT fk_cp_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id),
    CONSTRAINT fk_cp_prerequisites FOREIGN KEY (prerequisite_concept_id) REFERENCES concepts(id)
);

CREATE TABLE learning_path_concepts (
    learning_path_id BIGINT,
    concept_id BIGINT,
    module_key VARCHAR(100) NOT NULL,
    display_order INT NOT NULL,
    PRIMARY KEY (learning_path_id, concept_id),
    CONSTRAINT fk_lpc_paths FOREIGN KEY (learning_path_id) REFERENCES learning_paths(id),
    CONSTRAINT fk_lpc_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);

CREATE TABLE resources (
    id BIGINT PRIMARY KEY,
    concept_id BIGINT,
    title VARCHAR(255) NOT NULL,
    provider VARCHAR(150),
    resource_type VARCHAR(30) NOT NULL,
    url VARCHAR(1000) NOT NULL,
    focus_note TEXT NOT NULL,
    skip_note TEXT,
    authority VARCHAR(30),
    last_verified_at DATE,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_res_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);

CREATE TABLE learning_units (
    id BIGINT PRIMARY KEY,
    slug VARCHAR(150) UNIQUE NOT NULL,
    title VARCHAR(255) NOT NULL,
    primary_concept_id BIGINT,
    why_it_matters TEXT NOT NULL,
    objectives_json JSON NOT NULL,
    estimated_minutes INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_lu_concepts FOREIGN KEY (primary_concept_id) REFERENCES concepts(id)
);

CREATE TABLE learning_unit_resources (
    learning_unit_id BIGINT,
    resource_id BIGINT,
    display_order INT NOT NULL,
    PRIMARY KEY (learning_unit_id, resource_id),
    CONSTRAINT fk_lur_units FOREIGN KEY (learning_unit_id) REFERENCES learning_units(id),
    CONSTRAINT fk_lur_resources FOREIGN KEY (resource_id) REFERENCES resources(id)
);

CREATE TABLE exercises (
    id BIGINT PRIMARY KEY,
    learning_unit_id BIGINT,
    concept_id BIGINT,
    exercise_type VARCHAR(30) NOT NULL,
    difficulty VARCHAR(10) NOT NULL,
    prompt TEXT NOT NULL,
    starter_content TEXT,
    expected_answer TEXT,
    explanation TEXT,
    display_order INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_exe_units FOREIGN KEY (learning_unit_id) REFERENCES learning_units(id),
    CONSTRAINT fk_exe_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);

CREATE TABLE assessments (
    id BIGINT PRIMARY KEY,
    learning_unit_id BIGINT NULL,
    assessment_type VARCHAR(30) NOT NULL,
    title VARCHAR(255) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_asm_units FOREIGN KEY (learning_unit_id) REFERENCES learning_units(id)
);

CREATE TABLE questions (
    id BIGINT PRIMARY KEY,
    assessment_id BIGINT,
    question_type VARCHAR(30) NOT NULL,
    prompt TEXT NOT NULL,
    options_json JSON NULL,
    answer_json JSON NOT NULL,
    explanation TEXT NOT NULL,
    difficulty VARCHAR(10) NOT NULL,
    CONSTRAINT fk_que_assessments FOREIGN KEY (assessment_id) REFERENCES assessments(id)
);

CREATE TABLE question_concepts (
    question_id BIGINT,
    concept_id BIGINT,
    PRIMARY KEY (question_id, concept_id),
    CONSTRAINT fk_qc_questions FOREIGN KEY (question_id) REFERENCES questions(id),
    CONSTRAINT fk_qc_concepts FOREIGN KEY (concept_id) REFERENCES concepts(id)
);
