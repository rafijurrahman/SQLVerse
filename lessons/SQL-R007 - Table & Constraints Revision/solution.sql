-- ============================================================
-- SQL Master
-- Lesson: SQL-R007 — Table & Constraints Revision
-- ============================================================

-- Question 1
-- A: Active students
SELECT
    *
FROM students
WHERE enrollment_status = 'Active';

-- B: GPA above 3.5
SELECT
    *
FROM students
WHERE gpa > 3.5;

-- C: Missing phone numbers
SELECT
    *
FROM students
WHERE phone IS NULL;

-- Question 2
SELECT
    enrollment_status,
    COUNT(*) AS total_students,
    AVG(gpa) AS average_gpa
FROM students
GROUP BY enrollment_status;

-- Question 3
-- A: Top 3 students by GPA (Active only)
SELECT
    *
FROM students
WHERE enrollment_status = 'Active'
ORDER BY gpa DESC
LIMIT 3;

-- B: Students missing GPA
SELECT
    *
FROM students
WHERE gpa IS NULL;

-- Question 4
-- Check for duplicate emails (should return 0 rows)
SELECT
    email,
    COUNT(*)
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- Check for GPA VALUES out of valid range (should return 0 rows)
SELECT
    *
FROM students
WHERE gpa NOT BETWEEN 0 AND 4;
