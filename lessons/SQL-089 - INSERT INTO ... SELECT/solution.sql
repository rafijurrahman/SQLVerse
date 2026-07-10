-- ============================================================
-- SQL Master
-- Lesson: SQL-089 — INSERT INTO ... SELECT
-- ============================================================

-- Question 1
CREATE TABLE enrollments_archive (
    enrollment_id   INT         PRIMARY KEY AUTO_INCREMENT,
    student_id      INT         NOT NULL,
    course_id       INT         NOT NULL,
    semester        VARCHAR(20) NOT NULL,
    grade           VARCHAR(5)
);

INSERT INTO enrollments_archive
SELECT
    *
FROM enrollments
WHERE grade IS NOT NULL;

-- Question 2
CREATE TABLE student_backup LIKE students;

INSERT INTO student_backup
SELECT
    *
FROM students
WHERE enrollment_status = 'Active';

-- Question 3
CREATE TABLE spring_2024_archive LIKE enrollments;

INSERT INTO spring_2024_archive
SELECT
    *
FROM enrollments
WHERE semester = 'Spring 2024';

-- Question 4
CREATE TABLE student_summary (
    student_id INT PRIMARY KEY,
    course_count INT,
    avg_calculated DECIMAL(3,2)
);

INSERT INTO student_summary (student_id, course_count, avg_calculated)
SELECT
    e.student_id,
    COUNT(e.course_id),
    AVG(s.gpa)
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY e.student_id;
