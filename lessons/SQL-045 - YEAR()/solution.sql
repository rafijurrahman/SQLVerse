-- ============================================================
-- SQL Master
-- Lesson: SQL-045 — YEAR()
-- ============================================================

-- Question 1
SELECT
    admission_id,
    patient_name,
    YEAR(admission_date)
FROM admissions;

-- Question 2
SELECT
    YEAR(admission_date),
    COUNT(*)
FROM admissions
GROUP BY YEAR(admission_date);

-- Question 3
SELECT
    patient_name,
    ward,
    admission_date
FROM admissions
WHERE YEAR(admission_date) = 2024;

-- Question 4
SELECT
    patient_name,
    YEAR(admission_date) AS "Year",
    YEAR(discharge_date) AS "Discharge Year"
FROM admissions
WHERE discharge_date IS NOT NULL AND YEAR(admission_date) = YEAR(discharge_date);
