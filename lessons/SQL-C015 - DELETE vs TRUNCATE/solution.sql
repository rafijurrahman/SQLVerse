-- ============================================================
-- SQL Master
-- Lesson: SQL-C015 — DELETE vs TRUNCATE
-- ============================================================

-- Question 1
DELETE
FROM students
WHERE student_id = 3;

-- Question 2
DELETE
FROM students
WHERE enrollment_status = 'Inactive';

-- TRUNCATE would delete ALL students without a
WHERE clause option.;

-- Question 3
-- A
DELETE
FROM enrollments
WHERE grade IS NULL;

-- B
TRUNCATE TABLE enrollments;

-- Use DELETE for conditional/partial deletion, AND TRUNCATE to quickly empty the entire table.;

-- Question 4
SELECT
    COUNT(*)
FROM enrollments;

DELETE
FROM enrollments
WHERE student_id = 3;

SELECT
    COUNT(*)
FROM enrollments;

-- TRUNCATE is faster for large tables AS it bypasses logging individual row deletions, but DELETE is safer for partial removal.;
