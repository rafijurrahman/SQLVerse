-- ============================================================
-- SQL Master
-- Lesson: SQL-184 — Composite Primary Key
-- ============================================================

-- Question 1
CREATE TABLE enrollment_archive (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    grade VARCHAR(5),
    archived_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (student_id, course_id, semester)
);

-- Question 2
SELECT
    student_id,
    course_id,
    semester,
    COUNT(*) AS combination_count
FROM enrollments
GROUP BY student_id, course_id, semester
HAVING COUNT(*) > 1;

-- Question 3
-- Explanation:
-- 1. Direct Integrity Enforcement: IN a many-to-many relationship, the key combination must be unique. A composite PRIMARY KEY enforces this rule directly at the database level.
-- 2. Space AND Index Efficiency: Using a composite key avoids the storage overhead of a surrogate key column AND its additional auto-generated index, while still enforcing uniqueness.
-- 3. Faster Range Queries: Queries searching by the first column(s) of the composite PRIMARY KEY benefit
FROM clustered index seek operations.;

-- Question 4
CREATE TABLE student_grades (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    assessment_name VARCHAR(50) NOT NULL,
    score DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (student_id, course_id, semester, assessment_name),
    CONSTRAINT fk_grade_enrollment FOREIGN KEY (student_id, course_id, semester) 
        REFERENCES enrollments(student_id, course_id, semester)
);

-- Discussion ON Referencing Composite Keys:
-- 1. Complete Matching: A FOREIGN KEY referencing a composite key must match all columns of the referenced key IN the exact same order.
-- 2. Data Type Agreement: The corresponding columns IN both tables must share identical data types AND properties (e.g. collation).
-- 3. Syntax Example: FOREIGN KEY (student_id, course_id, semester) REFERENCES parent_table(student_id, course_id, semester);
