-- ============================================================
-- SQL Master
-- Lesson: SQL-186 — CHECK Constraint in Real Projects
-- Schema: Education Management
-- Business Scenario: DEFAULT best practices
-- ============================================================

CREATE TABLE students (
    student_id        INT           PRIMARY KEY AUTO_INCREMENT,
    student_code      VARCHAR(15)   NOT NULL UNIQUE,
    first_name        VARCHAR(50)   NOT NULL,
    last_name         VARCHAR(50)   NOT NULL,
    email             VARCHAR(100)  UNIQUE NOT NULL,
    phone             VARCHAR(20),
    date_of_birth     DATE          NOT NULL,
    gender            VARCHAR(10)   NOT NULL CHECK (gender IN ('Male','Female','Other')),
    enrollment_status VARCHAR(20)   NOT NULL DEFAULT 'Active',
    gpa               DECIMAL(3,2)  CHECK (gpa BETWEEN 0 AND 4.0)
);

CREATE TABLE courses (
    course_id   INT          PRIMARY KEY,
    course_code VARCHAR(15)  NOT NULL UNIQUE,
    course_name VARCHAR(100) NOT NULL,
    credits     INT          NOT NULL DEFAULT 3 CHECK (credits BETWEEN 1 AND 6),
    department  VARCHAR(50)  NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT         PRIMARY KEY AUTO_INCREMENT,
    student_id    INT         NOT NULL,
    course_id     INT         NOT NULL,
    semester      VARCHAR(20) NOT NULL,
    grade         VARCHAR(5),
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_course  FOREIGN KEY (course_id)  REFERENCES courses(course_id)   ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_enroll  UNIQUE (student_id, course_id, semester)
);

INSERT INTO students (student_id,student_code,first_name,last_name,email,phone,date_of_birth,gender,enrollment_status,gpa) VALUES
(1,'STD-001','Rahim',  'Uddin', 'rahim@uni.edu',  '01711-001','2001-03-15','Male',  'Active',   3.75),
(2,'STD-002','Fatema', 'Begum', 'fatema@uni.edu', '01811-002','2000-07-22','Female','Active',   3.92),
(3,'STD-003','Karim',  'Molla', 'karim@uni.edu',  '01911-003','2002-01-10','Male',  'Active',   2.85),
(4,'STD-004','Nasrin', 'Akter', 'nasrin@uni.edu', NULL,       '2001-09-05','Female','Inactive', 3.10);

INSERT INTO courses VALUES
(101,'CS101','Introduction to SQL',3,'Computer Science'),
(102,'CS102','Database Design',    3,'Computer Science'),
(103,'CS103','Data Analysis',      2,'Statistics');

INSERT INTO enrollments (student_id,course_id,semester,grade) VALUES
(1,101,'Spring 2024','A'),
(1,102,'Spring 2024','B+'),
(2,101,'Spring 2024',NULL),
(3,103,'Fall 2023','A-');
