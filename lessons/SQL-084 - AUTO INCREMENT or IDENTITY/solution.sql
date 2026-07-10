-- ============================================================
-- SQL Master
-- Lesson: SQL-084 — AUTO INCREMENT or IDENTITY
-- ============================================================

-- Question 1
SELECT
    student_id,
    first_name
FROM students
ORDER BY student_id;

-- Question 2
CREATE TABLE lecture_attendance (
    log_id       INT PRIMARY KEY AUTO_INCREMENT,
    student_id   INT NOT NULL,
    lecture_date DATE NOT NULL,
    status       VARCHAR(20) DEFAULT 'Present'
);

-- Question 3
CREATE TABLE book_loans (
    loan_id    INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    book_isbn  VARCHAR(20) NOT NULL,
    loan_date  DATE NOT NULL,
    return_date DATE
);

-- Question 4
-- Assuming student_id is AUTO_INCREMENT
INSERT INTO students (student_code, first_name, last_name, email, phone, date_of_birth, gender, enrollment_status, gpa) VALUES ('STD-009', 'Nabil', 'Rahman', 'nabil@uni.edu', '01711-009', '2001-05-12', 'Male', 'Active', 3.60);

SELECT
    *
FROM students
WHERE email = 'nabil@uni.edu';
