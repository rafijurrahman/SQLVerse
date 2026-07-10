-- ============================================================
-- SQL Master
-- Lesson: SQL-088 — TRUNCATE
-- Schema: Education Management
-- Business Scenario: Truncate table
-- ============================================================

CREATE TABLE students (
    student_id        INT           PRIMARY KEY AUTO_INCREMENT,
    student_code      VARCHAR(15)   NOT NULL,
    first_name        VARCHAR(50)   NOT NULL,
    last_name         VARCHAR(50)   NOT NULL,
    email             VARCHAR(100)  UNIQUE NOT NULL,
    phone             VARCHAR(20),
    enrollment_status VARCHAR(20)   NOT NULL DEFAULT 'Active',
    gpa               DECIMAL(3,2)
);
CREATE TABLE courses (
    course_id   INT          PRIMARY KEY,
    course_code VARCHAR(15)  NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    credits     INT          NOT NULL DEFAULT 3
);
CREATE TABLE enrollments (
    enrollment_id   INT         PRIMARY KEY AUTO_INCREMENT,
    student_id      INT         NOT NULL,
    course_id       INT         NOT NULL,
    semester        VARCHAR(20) NOT NULL,
    grade           VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
);
INSERT INTO students (student_id,student_code,first_name,last_name,email,phone,enrollment_status,gpa) VALUES
(1,'STD-001','Rahim',  'Uddin', 'rahim@uni.edu',  '01711-001','Active',   3.75),
(2,'STD-002','Fatema', 'Begum', 'fatema@uni.edu', '01811-002','Active',   3.92),
(3,'STD-003','Karim',  'Molla', 'karim@uni.edu',  '01911-003','Inactive', 2.85),
(4,'STD-004','Nasrin', 'Akter', 'nasrin@uni.edu', NULL,       'Active',   3.10);
INSERT INTO courses VALUES
(101,'CS101','Introduction to SQL',3),
(102,'CS102','Database Design',3),
(103,'CS103','Data Analysis',2);
INSERT INTO enrollments (enrollment_id,student_id,course_id,semester,grade) VALUES
(1,1,101,'Spring 2024','A'),
(2,1,102,'Spring 2024','B+'),
(3,2,101,'Spring 2024',NULL),
(4,3,103,'Fall 2023','A-');
