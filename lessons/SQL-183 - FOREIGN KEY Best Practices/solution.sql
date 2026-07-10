-- ============================================================
-- SQL Master
-- Lesson: SQL-183 — FOREIGN KEY Best Practices
-- ============================================================

-- Question 1
SELECT
    e.enrollment_id,
    e.semester,
    e.grade,
    s.first_name,
    s.last_name
FROM enrollments e
INNER JOIN students s ON e.student_id = s.student_id;

-- Question 2
CREATE TABLE student_contacts (
    contact_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    contact_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    CONSTRAINT fk_student_contact FOREIGN KEY (student_id) 
        REFERENCES students(student_id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

-- Question 3
-- Explanation:
-- Inserting an enrollment for a non-existent student_id violates the FOREIGN KEY constraint, prompting the engine to reject the insert.
-- Business Impact:
-- 1. Eliminates Orphan Records: Prevents the creation of ghost enrollments WITH no valid student.
-- 2. Maintains Billing & Grading Accuracy: Ensures invoicing AND grade rosters map strictly to actual enrolled individuals.
-- 3. Solidifies Business Rules: Establishes a database-level safety net, protecting logical integrity even if application code fails.;

-- Question 4
SELECT
    e.enrollment_id,
    e.student_id
FROM enrollments e
LEFT JOIN students s ON e.student_id = s.student_id
WHERE s.student_id IS NULL;
