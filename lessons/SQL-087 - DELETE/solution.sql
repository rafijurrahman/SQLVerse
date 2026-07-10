-- ============================================================
-- SQL Master
-- Lesson: SQL-087 — DELETE
-- ============================================================

-- Question 1
DELETE
FROM enrollments
WHERE student_id = 3;

DELETE
FROM students
WHERE student_id = 3;

-- Question 2
DELETE
FROM enrollments
WHERE grade IS NULL;

-- Question 3
DELETE
FROM enrollments
WHERE student_id IN ( SELECT student_id FROM students WHERE enrollment_status = 'Graduated' );

DELETE
FROM students
WHERE enrollment_status = 'Graduated';

-- Question 4
-- Step 1: Verify enrollments
SELECT
    *
FROM enrollments
WHERE student_id = 3;

-- Step 2: Delete enrollments
DELETE
FROM enrollments
WHERE student_id = 3;

-- Step 3: Delete student
DELETE
FROM students
WHERE student_id = 3;

-- Step 4: Verify deletion
SELECT
    COUNT(*)
FROM students
WHERE student_id = 3;
