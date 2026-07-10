-- ============================================================
-- SQL Master
-- Lesson: SQL-078 — DROP TABLE
-- ============================================================

-- Question 1
CREATE TABLE students_backup (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50)
);

DROP TABLE students_backup;

-- Question 2
DROP TABLE IF EXISTS temp_results;

-- Question 3
CREATE TABLE temp_student_export (
    export_id INT PRIMARY KEY,
    export_data TEXT
);

DROP TABLE IF EXISTS temp_student_export;

-- Question 4
/*
Using DROP TABLE ON a table that does NOT exist will raise an error AND halt script execution.
DROP TABLE IF EXISTS check if the table exists first AND drops it only if present, preventing errors.

DROP TABLE completely deletes the table structure, its columns, data, indexes, AND triggers.
TRUNCATE TABLE empties the table content (deletes all rows) but keeps the table structure intact for future inserts, AND resets any auto-increment counters.

-- unsafe:
DROP TABLE temp_results;

-- safe:
DROP TABLE IF EXISTS temp_results;

*/;
