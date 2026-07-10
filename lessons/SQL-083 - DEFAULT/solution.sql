-- ============================================================
-- SQL Master
-- Lesson: SQL-083 — DEFAULT
-- ============================================================

-- Question 1
SELECT
    enrollment_status,
    COUNT(*)
FROM students
GROUP BY enrollment_status;

-- Question 2
CREATE TABLE fee_payments (
    payment_id   INT            PRIMARY KEY AUTO_INCREMENT,
    amount       DECIMAL(10,2)  NOT NULL DEFAULT 0.00,
    status       VARCHAR(20)    NOT NULL DEFAULT 'Unpaid',
    payment_date DATE           DEFAULT NULL
);

-- Question 3
INSERT INTO students (student_id, student_code, first_name, last_name, email, phone, date_of_birth, gender) VALUES (9, 'STD-009', 'Nabil', 'Rahman', 'nabil@uni.edu', '01711-009', '2001-05-12', 'Male');

-- Question 4
SELECT
    enrollment_status,
    COUNT(*)
FROM students
GROUP BY enrollment_status;

CREATE TABLE default_demo (
    demo_id INT PRIMARY KEY AUTO_INCREMENT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active TINYINT DEFAULT 1,
    country VARCHAR(50) DEFAULT 'Bangladesh'
);
