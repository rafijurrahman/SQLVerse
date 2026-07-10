-- ============================================================
-- SQL Master
-- Lesson: SQL-081 — UNIQUE
-- ============================================================

-- Question 1
SELECT
    email,
    COUNT(*)
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- Question 2
CREATE TABLE student_certificates (
    cert_id     INT          PRIMARY KEY,
    student_id  INT          NOT NULL,
    cert_number VARCHAR(20)  UNIQUE NOT NULL,
    issue_date  DATE         NOT NULL
);

-- Question 3
SELECT
    email,
    COUNT(*) AS count
FROM students
GROUP BY email
HAVING count > 1;

/*
The UNIQUE constraint prevents duplicate entries by creating a unique index ON the email column.
The database engine automatically verifies this index before permitting any INSERT OR UPDATE transaction.
*/;

-- Question 4
CREATE TABLE national_id_registry (
    registry_id INT          PRIMARY KEY,
    student_id  INT          UNIQUE NOT NULL,
    national_id VARCHAR(20)  UNIQUE NOT NULL,
    issue_date  DATE
);
