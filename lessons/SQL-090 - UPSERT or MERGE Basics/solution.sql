-- ============================================================
-- SQL Master
-- Lesson: SQL-090 — UPSERT or MERGE Basics
-- ============================================================

-- Question 1
INSERT INTO students (student_id, student_code, first_name, last_name, email, enrollment_status) VALUES (1,'STD-001','Rahim','Uddin','rahim@uni.edu','Graduated') ON DUPLICATE KEY UPDATE enrollment_status = 'Graduated';

-- Question 2
INSERT INTO enrollments (student_id, course_id, semester, grade) 
VALUES (1, 101, 'Spring 2024', 'A+') 
ON DUPLICATE KEY UPDATE grade = 'A+';

-- Question 3
INSERT INTO enrollments (student_id, course_id, semester, grade) 
VALUES (2, 101, 'Spring 2024', 'A') 
ON DUPLICATE KEY UPDATE grade = VALUES(grade);

-- Question 4
INSERT INTO students (student_id, student_code, first_name, last_name, email, phone) 
VALUES (1, 'STD-001', 'Rahim', 'Uddin', 'rahim@uni.edu', '01799-999') 
ON DUPLICATE KEY UPDATE phone = VALUES(phone);
