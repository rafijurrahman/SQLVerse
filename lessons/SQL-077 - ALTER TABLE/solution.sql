-- ============================================================
-- SQL Master
-- Lesson: SQL-077 — ALTER TABLE
-- ============================================================

-- Question 1
ALTER TABLE students ADD COLUMN address VARCHAR(200);

-- Question 2
ALTER TABLE students ADD COLUMN nationality VARCHAR(50) NOT NULL DEFAULT 'Bangladeshi', ADD COLUMN blood_group VARCHAR(5);

-- Question 3
ALTER TABLE students ADD COLUMN emergency_contact VARCHAR(100), ADD COLUMN emergency_phone VARCHAR(20);

-- Question 4
-- A
ALTER TABLE students ADD COLUMN linkedin_profile VARCHAR(200);

-- B
ALTER TABLE students MODIFY COLUMN phone VARCHAR(25);

-- C
ALTER TABLE students RENAME COLUMN enrollment_status TO status;
