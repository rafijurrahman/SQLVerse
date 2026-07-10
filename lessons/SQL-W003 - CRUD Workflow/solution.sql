-- ============================================================
-- SQL Master
-- Lesson: SQL-W003 — CRUD Workflow
-- ============================================================

-- Question 1
-- C
INSERT INTO students (student_id, student_code, first_name, last_name, email, phone, date_of_birth, gender, enrollment_status, gpa)
VALUES (5, 'STD-005', 'Abir', 'Hasan', 'abir@uni.edu', '01511-005', '2001-05-12', 'Male', 'Active', 3.40);

-- R
SELECT
    *
FROM students
WHERE student_id = 5;

-- U
UPDATE students SET enrollment_status = 'Inactive'
WHERE student_id = 5;

-- D
DELETE
FROM students
WHERE student_id = 5;

-- Question 2
-- R
SELECT
    gpa
FROM students
WHERE student_id = 1;

-- U
UPDATE students SET gpa = 3.90
WHERE student_id = 1;

-- R
SELECT
    gpa
FROM students
WHERE student_id = 1;

-- Question 3
-- C
INSERT INTO students (student_id, student_code, first_name, last_name, email, phone, date_of_birth, gender, enrollment_status, gpa)
VALUES (6, 'STD-006', 'Sadia', 'Islam', 'sadia@uni.edu', '01611-006', '2002-11-20', 'Female', 'Active', 3.65);

-- R
SELECT
    *
FROM students
WHERE student_id = 6;

-- U
UPDATE students SET phone = '01711-999'
WHERE student_id = 6;

-- R
SELECT
    *
FROM students
WHERE student_id = 6;

-- Question 4
-- C
INSERT INTO students (student_id, student_code, first_name, last_name, email, phone, date_of_birth, gender, enrollment_status, gpa)
VALUES (7, 'STD-007', 'Rafi', 'Islam', 'rafi@uni.edu', '01811-007', '2001-08-15', 'Male', 'Active', 3.50);

-- R
SELECT
    *
FROM students
WHERE student_id = 7;

-- U
UPDATE students SET gpa = 3.80
WHERE student_id = 7;

-- R
SELECT
    *
FROM students
WHERE student_id = 7;

-- D
DELETE
FROM students
WHERE student_id = 7;

-- R
SELECT
    *
FROM students
WHERE student_id = 7;
