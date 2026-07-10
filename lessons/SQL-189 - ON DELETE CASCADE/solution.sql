-- ============================================================
-- SQL Master
-- Lesson: SQL-189 — ON DELETE CASCADE
-- ============================================================

-- Question 1
-- ON DELETE CASCADE: WHEN a student record is deleted
FROM the students table, all their associated enrollment records IN the enrollments table are automatically deleted by the database. -- ON DELETE RESTRICT: WHEN a course record is deleted
FROM the courses table, the database prevents the deletion AND throws an error if there are any associated enrollment records IN the enrollments table. The user must manually delete the referencing enrollments first.;

-- Question 2
DELETE
FROM students
WHERE student_id = 1;

SELECT
    *
FROM enrollments
WHERE student_id = 1;

-- Question 3
-- The course table FOREIGN KEY IN enrollments (fk_course) is configured WITH ON DELETE RESTRICT.
-- WHEN attempting to delete the course 'CS103' (course_id 103), the database checks the enrollments table AND finds a referencing record (student_id 3 is enrolled IN course_id 103).
-- Because of RESTRICT, the database blocks the deletion of CS103 to prevent orphan records IN the enrollments table, which would violate referential integrity.;

-- Question 4
START TRANSACTION;

DELETE
FROM enrollments
WHERE course_id = 103;

DELETE
FROM courses
WHERE course_id = 103;

COMMIT;
