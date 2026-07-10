-- ============================================================
-- SQL Master
-- Lesson: SQL-C013 — CAST() vs CONVERT()
-- ============================================================

-- Question 1
SELECT
    CAST(gpa AS CHAR)
FROM students;

SELECT
    CONVERT(gpa, CHAR)
FROM students;

-- Question 2
SELECT
    CAST(gpa AS DECIMAL(4,2)) AS cast_gpa,
    CONVERT(gpa, DECIMAL(4,2)) AS convert_gpa
FROM students;

-- Question 3
SELECT
    CAST(student_id AS CHAR) AS cast_id,
    CONVERT(student_id, CHAR) AS convert_id
FROM students;

-- Question 4
SELECT
    student_code,
    CAST(YEAR(date_of_birth) AS CHAR) AS cast_year,
    CONVERT(YEAR(date_of_birth), CHAR) AS convert_year
FROM students;
