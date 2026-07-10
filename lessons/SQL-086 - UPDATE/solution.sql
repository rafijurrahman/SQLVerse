-- ============================================================
-- SQL Master
-- Lesson: SQL-086 — UPDATE
-- ============================================================

-- Question 1
UPDATE students SET enrollment_status = 'Active'
WHERE student_id = 3;

-- Question 2
UPDATE students SET gpa = 3.50
WHERE gpa IS NULL AND enrollment_status = 'Active';

-- Question 3
UPDATE enrollments SET grade = 'A'
WHERE enrollment_id = 3;

UPDATE enrollments SET grade = 'B'
WHERE grade IS NULL;

-- Question 4
UPDATE students SET gpa = LEAST(gpa + 0.10, 4.00)
WHERE enrollment_status = 'Active' AND gpa < 3.50;
