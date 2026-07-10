-- ============================================================
-- SQL Master
-- Lesson: SQL-085 — INSERT
-- ============================================================

-- Question 1
INSERT INTO students (student_code, first_name, last_name, email, phone, enrollment_status, gpa) VALUES ('STD-005', 'Milon', 'Ahmed', 'milon@uni.edu', '01711-005', 'Active', 3.55);

-- Question 2
INSERT INTO courses VALUES (104, 'CS104', 'Advanced SQL', 3), (105, 'CS105', 'Data Warehousing', 3);

-- Question 3
INSERT INTO students (student_code, first_name, last_name, email, phone, enrollment_status, gpa) VALUES 
('STD-006', 'Tania', 'Rahman', 'tania@uni.edu', '01811-006', 'Active', 3.40),
('STD-007', 'Rubel', 'Islam', 'rubel@uni.edu', '01911-007', 'Active', 3.12),
('STD-008', 'Sumaiya', 'Khatun', 'sumaiya@uni.edu', '01611-008', 'Active', 3.85);

-- Question 4
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (1, 103, 'Fall 2024', NULL);

SELECT
    *
FROM enrollments
WHERE student_id = 1 AND course_id = 103 AND semester = 'Fall 2024';
