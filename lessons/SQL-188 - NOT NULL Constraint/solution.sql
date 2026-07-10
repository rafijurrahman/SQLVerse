-- ============================================================
-- SQL Master
-- Lesson: SQL-188 — NOT NULL Constraint
-- ============================================================

-- Question 1
SELECT
    *
FROM students
WHERE first_name IS NULL OR last_name IS NULL OR email IS NULL;

-- Question 2
CREATE TABLE course_materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    material_name VARCHAR(100) NOT NULL,
    upload_date DATE NOT NULL,
    description TEXT
);

-- Question 3
-- Columns IN the students table that allow NULL VALUES are: phone AND gpa.
SELECT
    student_id,
    student_code,
    first_name,
    last_name
FROM students
WHERE phone IS NULL;

-- Question 4
-- Attempt to insert a NULL value into the first_name column (which IS NOT NULL)
INSERT INTO students (student_code, first_name, last_name, email, date_of_birth, gender)
VALUES ('STD-006', NULL, 'Hasan', 'hasan@uni.edu', '2001-08-15', 'Male');

-- Expected Behavior:
-- The database will reject this operation AND throw a constraint violation error (e.g., "Column 'first_name' cannot be null" IN MySQL).
-- The transaction/statement will fail, ensuring that data integrity is maintained AND no incomplete records are saved.;
