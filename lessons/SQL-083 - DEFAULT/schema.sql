-- ============================================================
-- SQL Master
-- Lesson: SQL-083 — DEFAULT
-- Schema: Education Management
-- Business Scenario: DEFAULT value
-- ============================================================

CREATE TABLE students (
    student_id        INT           PRIMARY KEY,
    student_code      VARCHAR(15)   NOT NULL,
    first_name        VARCHAR(50)   NOT NULL,
    last_name         VARCHAR(50)   NOT NULL,
    email             VARCHAR(100)  UNIQUE NOT NULL,
    phone             VARCHAR(20),
    date_of_birth     DATE          NOT NULL,
    gender            VARCHAR(10)   NOT NULL,
    enrollment_status VARCHAR(20)   NOT NULL DEFAULT 'Active',
    gpa               DECIMAL(3,2)
);
INSERT INTO students VALUES
(1,'STD-001','Rahim',   'Uddin',  'rahim.u@uni.edu',   '01711-001','2001-03-15','Male',  'Active',3.75),
(2,'STD-002','Fatema',  'Begum',  'fatema.b@uni.edu',  '01811-002','2000-07-22','Female','Active',3.92),
(3,'STD-003','Karim',   'Molla',  'karim.m@uni.edu',   '01911-003','2002-01-10','Male',  'Active',2.85),
(4,'STD-004','Nasrin',  'Akter',  'nasrin.a@uni.edu',  NULL,       '2001-09-05','Female','Inactive',3.10),
(5,'STD-005','Milon',   'Ahmed',  'milon.a@uni.edu',   '01711-005','2000-12-30','Male',  'Active',3.55),
(6,'STD-006','Tania',   'Rahman', 'tania.r@uni.edu',   '01811-006','2002-04-18','Female','Active',NULL),
(7,'STD-007','Rubel',   'Islam',  'rubel.i@uni.edu',   '01911-007','2001-06-25','Male',  'Graduated',3.88),
(8,'STD-008','Sumaiya', 'Khatun', 'sumaiya.k@uni.edu', '01611-008','2000-08-14','Female','Active',3.45);
