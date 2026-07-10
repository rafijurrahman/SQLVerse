-- ============================================================
-- SQL Master
-- Lesson: SQL-080 — FOREIGN KEY
-- ============================================================

-- Question 1
SELECT
    *
FROM enrollments;

-- Question 2
SELECT
    s.first_name,
    c.course_name,
    e.status
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Question 3
SELECT
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    c.course_code,
    c.course_name,
    e.enrollment_date,
    e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.status = 'Completed';

-- Question 4
SELECT
    *
FROM enrollments
WHERE student_id NOT IN ( SELECT student_id FROM students );
