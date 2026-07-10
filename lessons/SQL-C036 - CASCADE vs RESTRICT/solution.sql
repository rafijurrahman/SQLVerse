-- ============================================================
-- SQL Master
-- Lesson: SQL-C036 — CASCADE vs RESTRICT
-- ============================================================

-- Question 1
SHOW CREATE TABLE enrollments;

-- Question 2
-- This statement will fail because CS101 (course_id 101) has active enrollments AND ON DELETE RESTRICT is SET.
DELETE
FROM courses
WHERE course_id = 101;

-- Question 3
-- Design decision A: Cascade deletion for dependent entity
CREATE TABLE student_notes (
    note_id INT PRIMARY KEY,
    student_id INT,
    content TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE
);

-- Design decision B: Restrict deletion for reference entity
CREATE TABLE class_registrations (
    reg_id INT PRIMARY KEY,
    course_id INT,
    student_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE RESTRICT,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE RESTRICT
);

-- Question 4
-- A: Test CASCADE (delete student 1 AND verify enrollments of student 1 are gone)
DELETE
FROM students
WHERE student_id = 1;

SELECT
    COUNT(*)
FROM enrollments
WHERE student_id = 1;

-- B: Test RESTRICT (try to delete course 103 which Karim is enrolled IN - should fail)
DELETE
FROM courses
WHERE course_id = 103;

SELECT
    COUNT(*)
FROM courses
WHERE course_id = 103;
