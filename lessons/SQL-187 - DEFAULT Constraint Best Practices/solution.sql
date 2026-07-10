-- ============================================================
-- SQL Master
-- Lesson: SQL-187 — DEFAULT Constraint Best Practices
-- ============================================================

-- Question 1
INSERT INTO students (student_code, first_name, last_name, email, date_of_birth, gender)
VALUES ('STD-005', 'Abir', 'Rahman', 'abir@uni.edu', '2001-05-10', 'Male');

-- Question 2
CREATE TABLE library_loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    student_id INT NOT NULL,
    loan_date DATE DEFAULT CURRENT_DATE,
    return_status VARCHAR(20) DEFAULT 'Borrowed'
);

-- Question 3
SELECT
    student_id,
    student_code,
    first_name,
    last_name,
    enrollment_status
FROM students
WHERE enrollment_status = 'Active';

-- Question 4
-- Default constraints reduce code redundancy by allowing application-level INSERT queries to omit columns that have standard OR fallback VALUES.
-- Instead of requiring developers to explicitly specify VALUES LIKE 'Active', current timestamps, OR default counters IN every INSERT query across different parts of the application, the database handles this automatically.
-- This keeps queries shorter, reduces errors, AND centralizes business defaults IN the database schema itself, meaning any change to a default value only needs to be updated IN one place (the database schema) rather than across multiple application queries.;
