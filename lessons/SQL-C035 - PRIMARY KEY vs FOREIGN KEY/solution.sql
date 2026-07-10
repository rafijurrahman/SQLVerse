-- ============================================================
-- SQL Master
-- Lesson: SQL-C035 — PRIMARY KEY vs FOREIGN KEY
-- ============================================================

-- Question 1
-- A: PK check
SELECT
    *
FROM students
WHERE student_id = 1;

-- B: FK check
SELECT
    *
FROM enrollments
WHERE student_id = 1;

-- Question 2
SELECT
    s.first_name,
    s.last_name,
    e.course_id,
    e.semester,
    e.grade
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id;

-- Question 3
-- Relationship: students.student_id (PK) -- referenced by --> enrollments.student_id (FK)
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    COUNT(e.enrollment_id) AS enrollment_count
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name;

-- Question 4
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
