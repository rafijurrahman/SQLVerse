-- ============================================================
-- SQL Master
-- Lesson: SQL-079 — PRIMARY KEY
-- ============================================================

-- Question 1
SELECT
    *
FROM students
WHERE student_id = 3;

-- Question 2
CREATE TABLE departments (
    dept_id   INT          PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL UNIQUE,
    dept_head VARCHAR(100)
);

-- Question 3
-- Design 1: Composite PRIMARY KEY
CREATE TABLE courses_composite (
    course_code VARCHAR(15) NOT NULL,
    semester    VARCHAR(20) NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (course_code, semester)
);

-- Design 2: Surrogate PRIMARY KEY
CREATE TABLE courses_surrogate (
    course_id   INT PRIMARY KEY AUTO_INCREMENT,
    course_code VARCHAR(15) NOT NULL,
    semester    VARCHAR(20) NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    UNIQUE (course_code, semester)
);

/*
Surrogate Primary Keys are generally preferred OVER composite keys because:
1. They simplify joining tables (you only need to reference one column AS a FOREIGN KEY).
2. They are smaller AND indexed more efficiently.
3. They isolate the PRIMARY KEY
FROM business logic changes. */;

-- Question 4
CREATE TABLE pk_demo (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

/*
-- This will fail due to duplicate key error:
INSERT INTO pk_demo VALUES (1, 'Alice');

INSERT INTO pk_demo VALUES (1, 'Bob');

*/

-- Correct version:
INSERT INTO pk_demo VALUES (1, 'Alice');

INSERT INTO pk_demo VALUES (2, 'Bob');
