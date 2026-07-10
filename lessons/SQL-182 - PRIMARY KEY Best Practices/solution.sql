-- ============================================================
-- SQL Master
-- Lesson: SQL-182 — PRIMARY KEY Best Practices
-- ============================================================

-- Question 1
-- PRIMARY KEY: student_id
-- Explanation:
-- 1. Integer Data Type: INT is highly compact (4 bytes) AND faster to compare AND index compared to text columns.
-- 2. Auto-Incrementing: Ensures records are inserted sequentially, preventing clustered index page fragmentation AND page splits IN InnoDB.
-- 3. Fixed Size: Decreases the footprint of secondary indexes, which use the PRIMARY KEY AS a pointer to the clustered index leaf node.;

-- Question 2
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(100),
    budget DECIMAL(12,2)
);

-- Question 3
-- Explanation:
-- 1. Natural Key (e.g., email):
--    - Pros: No extra column needed;

directly maps to real-world uniqueness.
-- - Cons: Can change (e.g. email updates), requires expensive FOREIGN KEY updates, AND AS a string, degrades index density AND
JOIN performance. -- 2. Surrogate Key (e.g., student_id): -- - Pros: Remains constant forever, independent of business rules, compact integer size maximizes
JOIN performance AND indexing efficiency. -- - Cons: Has no real-world business meaning.;

-- Question 4
SELECT
    student_id,
    COUNT(*) AS occurrence_count
FROM students
GROUP BY student_id
HAVING COUNT(*) > 1;
