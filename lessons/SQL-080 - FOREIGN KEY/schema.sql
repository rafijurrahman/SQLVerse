-- ============================================================
-- SQL Master
-- Lesson: SQL-080 — FOREIGN KEY
-- Schema: Education Management
-- Business Scenario: Foreign key
-- ============================================================

CREATE TABLE students (
    student_id   INT          PRIMARY KEY,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    email        VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE courses (
    course_id    INT          PRIMARY KEY,
    course_code  VARCHAR(15)  NOT NULL,
    course_name  VARCHAR(100) NOT NULL,
    credits      INT          NOT NULL DEFAULT 3
);
CREATE TABLE enrollments (
    enrollment_id   INT         PRIMARY KEY,
    student_id      INT         NOT NULL,
    course_id       INT         NOT NULL,
    enrollment_date DATE        NOT NULL,
    grade           VARCHAR(5),
    status          VARCHAR(20) NOT NULL DEFAULT 'Enrolled',
    CONSTRAINT fk_enroll_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_enroll_course  FOREIGN KEY (course_id)  REFERENCES courses(course_id)
);
INSERT INTO students VALUES
(1,'Rahim','Uddin','rahim@uni.edu'),
(2,'Fatema','Begum','fatema@uni.edu'),
(3,'Karim','Molla','karim@uni.edu'),
(4,'Nasrin','Akter','nasrin@uni.edu');
INSERT INTO courses VALUES
(101,'CS101','Introduction to SQL',3),
(102,'CS102','Database Design',3),
(103,'CS103','Data Analysis',2);
INSERT INTO enrollments VALUES
(1,1,101,'2024-01-10','A','Completed'),
(2,1,102,'2024-01-10','B+','Completed'),
(3,2,101,'2024-01-10',NULL,'Enrolled'),
(4,3,103,'2024-02-01','A-','Completed'),
(5,4,101,'2024-02-01',NULL,'Enrolled');
