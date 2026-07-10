-- ============================================================
-- SQL Master
-- Lesson: SQL-047 — DAY()
-- ============================================================

-- Question 1
SELECT
    admission_id,
    patient_name,
    DAY(admission_date) AS "Admission Day"
FROM admissions;

-- Question 2
SELECT
    *
FROM admissions
WHERE DAY(admission_date) BETWEEN 1 AND 10;

-- Question 3
SELECT
    patient_name,
    admission_date,
    DAY(admission_date) AS "Admission Day"
FROM admissions
WHERE DAYOFWEEK(admission_date) = 1 OR DAYOFWEEK(admission_date) = 7;

-- Question 4
SELECT
    patient_name,
    DAY(admission_date) AS "Admit Day",
    DAY(discharge_date) AS "Discharge Day",
    (DAY(discharge_date) - DAY(admission_date)) AS "Days Difference"
FROM admissions
WHERE discharge_date IS NOT NULL;
