-- ============================================================
-- SQL Master
-- Lesson: SQL-088 — TRUNCATE
-- ============================================================

-- Question 1
TRUNCATE TABLE enrollments;

-- Question 2
SELECT
    COUNT(*)
FROM enrollments;

TRUNCATE TABLE enrollments;

SELECT
    COUNT(*)
FROM enrollments;

-- Question 3
TRUNCATE TABLE enrollments;

-- Question 4
-- A: Selective deletion
DELETE
FROM enrollments
WHERE semester = 'Spring 2024';

-- B: Complete reset
TRUNCATE TABLE enrollments;

/*
DELETE is a DML operation that deletes rows matching a
WHERE clause one by one, writing transaction logs for each deletion. It is slower but safer for selective deletions. TRUNCATE is a DDL operation that drops AND re-creates the table (OR deallocates pages), bypassing row-by-row triggers AND logs. It is extremely fast AND resets AUTO_INCREMENT counters, but cannot be filtered WITH a
WHERE clause. */;
