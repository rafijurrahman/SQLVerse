-- ============================================================
-- SQL Master
-- Lesson: SQL-190 — ON UPDATE CASCADE
-- ============================================================

-- Question 1
UPDATE students SET student_id = 99
WHERE student_id = 1;

SELECT
    *
FROM enrollments
WHERE student_id = 99;

-- Question 2
-- Surrogate primary keys are system-generated (LIKE AUTO_INCREMENT integers) AND typically never change, making ON UPDATE CASCADE rarely necessary.
-- Natural primary keys represent real-world data (such AS a passport number, email address, OR student code) that can occasionally change due to data entry errors, rebranding, OR official updates.
-- ON UPDATE CASCADE is extremely useful for natural keys because it ensures that WHEN a natural key is modified IN the parent table, all corresponding FOREIGN KEY REFERENCES IN child tables are updated automatically, preventing broken links.;

-- Question 3
UPDATE students SET student_id = 101
WHERE student_id = 1;

SELECT
    *
FROM enrollments
WHERE student_id = 101;

-- Question 4
CREATE TABLE student_advisors (
    student_id INT PRIMARY KEY,
    advisor_id INT NULL,
    CONSTRAINT fk_student_advisor FOREIGN KEY (advisor_id) REFERENCES instructors(instructor_id)
        ON UPDATE CASCADE 
        ON DELETE SET NULL
);
