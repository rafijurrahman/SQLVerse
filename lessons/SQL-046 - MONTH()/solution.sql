-- ============================================================
-- SQL Master
-- Lesson: SQL-046 — MONTH()
-- ============================================================

-- Question 1
SELECT
    admission_id,
    patient_name,
    MONTH(admission_date)
FROM admissions;

-- Question 2
SELECT
    MONTH(admission_date),
    COUNT(*)
FROM admissions
GROUP BY MONTH(admission_date)
ORDER BY MONTH(admission_date);

-- Question 3
SELECT
    MONTH(admission_date),
    COUNT(*) AS num_admissions
FROM admissions
WHERE YEAR(admission_date) = 2024
GROUP BY MONTH(admission_date)
ORDER BY num_admissions DESC
LIMIT 1;

-- Question 4
SELECT
    patient_name,
    MONTH(admission_date) AS "Admission Month",
    MONTH(discharge_date) AS "Discharge Month"
FROM admissions
WHERE discharge_date IS NOT NULL AND MONTH(discharge_date) != MONTH(admission_date);
