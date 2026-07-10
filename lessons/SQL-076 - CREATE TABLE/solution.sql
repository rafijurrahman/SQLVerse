-- ============================================================
-- SQL Master
-- Lesson: SQL-076 — CREATE TABLE
-- ============================================================

-- Question 1
CREATE TABLE courses (
    course_id   INT          PRIMARY KEY,
    course_code VARCHAR(15)  NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    credits     INT,
    department  VARCHAR(50)
);

-- Question 2
CREATE TABLE student_contacts (
    contact_id   INT          PRIMARY KEY AUTO_INCREMENT,
    student_id   INT          NOT NULL,
    contact_name VARCHAR(100) NOT NULL,
    relationship VARCHAR(50)  NOT NULL,
    phone        VARCHAR(20)  NOT NULL
);

-- Question 3
CREATE TABLE student_fees (
    fee_id     INT            PRIMARY KEY,
    student_id INT            NOT NULL,
    fee_type   VARCHAR(50)    NOT NULL,
    amount     DECIMAL(10,2)  NOT NULL,
    due_date   DATE           NOT NULL,
    status     VARCHAR(20)    DEFAULT 'Unpaid'
);

-- Question 4
CREATE TABLE exam_results (
    result_id   INT          PRIMARY KEY AUTO_INCREMENT,
    student_id  INT          NOT NULL,
    course_code VARCHAR(15)  NOT NULL,
    semester    VARCHAR(20)  NOT NULL,
    score       DECIMAL(5,2) NOT NULL CHECK(score BETWEEN 0 AND 100),
    grade       VARCHAR(5)   NOT NULL
);
