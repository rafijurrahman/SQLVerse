-- ============================================================
-- SQL Master
-- Lesson: SQL-W011 — Designing Table Relationships
-- ============================================================

-- Question 1
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_code VARCHAR(15) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gpa DECIMAL(3,2) CHECK (gpa BETWEEN 0 AND 4.0)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_code VARCHAR(15) NOT NULL UNIQUE,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL DEFAULT 3
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE RESTRICT,
    UNIQUE (student_id, course_id, semester)
);

-- Question 2
-- FK check (verify orphans)
SELECT
    *
FROM enrollments
WHERE student_id NOT IN ( SELECT student_id FROM students );

-- Unique check (verify duplicate combinations)
SELECT
    student_id,
    course_id,
    semester,
    COUNT(*)
FROM enrollments
GROUP BY student_id, course_id, semester
HAVING COUNT(*) > 1;

-- GPA constraint check
SELECT
    *
FROM students
WHERE gpa < 0 OR gpa > 4;

-- Question 3
-- 1. Insert student
INSERT INTO students (student_code, first_name, last_name, email, gpa) 
VALUES ('STD-005', 'Abir', 'Hasan', 'abir@uni.edu', 3.40);

-- 2. Insert course
INSERT INTO courses (course_id, course_code, course_name, credits) 
VALUES (104, 'CS104', 'Web Development', 3);

-- 3. Enroll student
INSERT INTO enrollments (student_id, course_id, semester, grade) 
VALUES (5, 104, 'Fall 2024', NULL);

-- 4. UPDATE grade
UPDATE enrollments SET grade = 'A'
WHERE student_id = 5 AND course_id = 104;

-- 5. Verify WITH
JOIN 
SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    e.grade
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

-- Question 4
-- Normalization design: add departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) UNIQUE NOT NULL
);

-- Alter courses to add department_id
ALTER TABLE courses ADD COLUMN department_id INT;

ALTER TABLE courses ADD CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(dept_id);

-- Query across all 4 tables
SELECT
    d.dept_name,
    c.course_name,
    s.first_name,
    s.last_name,
    e.grade
FROM departments d
INNER JOIN courses c ON d.dept_id = c.department_id
INNER JOIN enrollments e ON c.course_id = e.course_id
INNER JOIN students s ON e.student_id = s.student_id;
