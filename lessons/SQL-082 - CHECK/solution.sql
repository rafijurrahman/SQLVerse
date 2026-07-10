-- ============================================================
-- SQL Master
-- Lesson: SQL-082 — CHECK
-- ============================================================

-- Question 1
SELECT
    *
FROM students
WHERE gpa < 0 OR gpa > 4.0;

-- Question 2
CREATE TABLE student_scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    score    DECIMAL(5,2) NOT NULL CHECK(score >= 0 AND score <= 100),
    grade    VARCHAR(5)   NOT NULL CHECK(grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C', 'D', 'F'))
);

-- Question 3
CREATE TABLE age_verified_students (
    student_id    INT PRIMARY KEY,
    first_name    VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    CHECK (YEAR(CURRENT_DATE) - YEAR(date_of_birth) >= 16)
);

-- Question 4
SELECT
    *
FROM students
WHERE gpa NOT BETWEEN 0 AND 4.0 OR enrollment_status NOT IN ('Active', 'Inactive', 'Graduated');
