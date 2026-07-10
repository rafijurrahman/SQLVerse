-- ============================================================
-- SQL Master
-- Lesson: SQL-186 — CHECK Constraint in Real Projects
-- ============================================================

-- Question 1
SELECT
    *
FROM students
WHERE gpa < 0.0 OR gpa > 4.0;

-- Question 2
CREATE TABLE exam_scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    score INT NOT NULL CHECK (score BETWEEN 0 AND 100),
    grade VARCHAR(2) NOT NULL CHECK (grade IN ('A', 'B', 'C', 'F'))
);

-- Question 3
CREATE TABLE student_emails (
    student_id INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL CHECK (email LIKE '%@uni.edu')
);

-- Question 4
SELECT
    *
FROM students
WHERE gender NOT IN ('Male', 'Female', 'Other') OR gender IS NULL;
