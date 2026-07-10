-- ============================================================
-- SQL Master
-- Lesson: SQL-C015 — DELETE vs TRUNCATE
-- Schema: Education Management
-- Business Scenario: DELETE vs TRUNCATE
-- ============================================================

CREATE TABLE students (
    student_id        INT           PRIMARY KEY,
    first_name        VARCHAR(50)   NOT NULL,
    last_name         VARCHAR(50)   NOT NULL,
    email             VARCHAR(100)  UNIQUE NOT NULL,
    enrollment_status VARCHAR(20)   NOT NULL DEFAULT 'Active'
);
CREATE TABLE enrollments (
    enrollment_id INT  PRIMARY KEY,
    student_id    INT  NOT NULL,
    course_code   VARCHAR(15) NOT NULL,
    semester      VARCHAR(20) NOT NULL,
    grade         VARCHAR(5)
);
INSERT INTO students VALUES
(1,'Rahim','Uddin','rahim@uni.edu','Active'),
(2,'Fatema','Begum','fatema@uni.edu','Active'),
(3,'Karim','Molla','karim@uni.edu','Inactive'),
(4,'Nasrin','Akter','nasrin@uni.edu','Graduated');
INSERT INTO enrollments VALUES
(1,1,'CS101','Spring 2024','A'),
(2,1,'CS102','Spring 2024','B+'),
(3,2,'CS101','Spring 2024',NULL),
(4,3,'CS103','Fall 2023','A-');
