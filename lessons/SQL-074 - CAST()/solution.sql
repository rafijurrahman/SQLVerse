-- ============================================================
-- SQL Master
-- Lesson: SQL-074 — CAST()
-- ============================================================

-- Question 1
SELECT
    student_id,
    CAST(gpa AS CHAR) AS gpa_text
FROM students;

-- Question 2
SELECT
    CONCAT(CAST(student_id AS CHAR), ' - ', student_code) AS "Full ID"
FROM students;

-- Question 3
SELECT
    student_code,
    first_name,
    CAST(CAST(gpa AS DECIMAL(4,2)) AS CHAR) AS "Formatted GPA"
FROM students;

-- Question 4
SELECT
    student_code,
    CAST(YEAR(date_of_birth) AS CHAR) AS "Birth Year",
    CAST(FLOOR(DATEDIFF(CURRENT_DATE, date_of_birth)/365) AS CHAR) AS "Age"
FROM students;
