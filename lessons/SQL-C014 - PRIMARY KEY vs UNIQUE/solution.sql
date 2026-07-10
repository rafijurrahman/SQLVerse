-- ============================================================
-- SQL Master
-- Lesson: SQL-C014 — PRIMARY KEY vs UNIQUE
-- ============================================================

-- Question 1
SELECT
    student_id
FROM students
WHERE student_id = 1;

SELECT
    email
FROM students
WHERE email = 'rahim.u@uni.edu';

-- Question 2
CREATE TABLE example (id INT PRIMARY KEY, email VARCHAR(100) UNIQUE, name VARCHAR(50));

-- Question 3
CREATE TABLE students_example (
    student_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

-- Question 4
SELECT
    *
FROM students
WHERE email IS NULL;
