-- ============================================================
-- SQL Master
-- Lesson: SQL-R016 — Constraints Revision
-- ============================================================

-- Question 1
-- A: PK uniqueness check (should return 0 rows)
SELECT
    student_id,
    COUNT(*)
FROM students
GROUP BY student_id
HAVING COUNT(*) > 1;

-- B: FK integrity check (should return 0 rows)
SELECT
    *
FROM enrollments
WHERE student_id NOT IN ( SELECT student_id FROM students );

-- C: UNIQUE check (should return 0 rows)
SELECT
    email,
    COUNT(*)
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- D: CHECK violation check (should return 0 rows)
SELECT
    *
FROM students
WHERE gpa NOT BETWEEN 0 AND 4;

-- E: NOT NULL violation check (should return 0 rows)
SELECT
    *
FROM students
WHERE first_name IS NULL OR last_name IS NULL OR email IS NULL;

-- F: DEFAULT check (verify if active is default)
SELECT
    *
FROM students
WHERE enrollment_status IS NULL;

-- Question 2
SELECT
    'student_error' AS err_type,
    student_id
FROM students
WHERE student_id IS NULL OR email IS NULL OR gpa NOT BETWEEN 0 AND 4
UNION ALL 
SELECT
    'enrollment_error' AS err_type,
    enrollment_id
FROM enrollments
WHERE enrollment_id IS NULL OR student_id NOT IN ( SELECT student_id FROM students ) OR course_id NOT IN ( SELECT course_id FROM courses );

-- Question 3
-- 1. No duplicate emails
SELECT
    email,
    COUNT(*)
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- 2. Valid students AND courses
SELECT
    *
FROM enrollments
WHERE student_id NOT IN ( SELECT student_id FROM students ) OR course_id NOT IN ( SELECT course_id FROM courses );

-- 3. GPA validation
SELECT
    *
FROM students
WHERE gpa < 0 OR gpa > 4;

-- 4. Enrollment status validation
SELECT
    *
FROM students
WHERE enrollment_status NOT IN ('Active', 'Inactive', 'Graduated');

-- Question 4
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    lecture_date DATE NOT NULL,
    attendance_status VARCHAR(20) NOT NULL DEFAULT 'Present' CHECK (attendance_status IN ('Present', 'Absent', 'Late')),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    UNIQUE (student_id, lecture_date)
);
