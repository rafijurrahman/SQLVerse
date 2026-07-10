-- ============================================================
-- SQL Master
-- Lesson: SQL-053 — DATEDIFF()
-- ============================================================

-- Question 1
SELECT
    patient_name,
    DATEDIFF(discharge_date, admission_date) AS "Days Stayed"
FROM admissions
WHERE discharge_date IS NOT NULL;

-- Question 2
SELECT
    patient_name,
    ward,
    DATEDIFF(discharge_date, admission_date) AS "Days Stayed"
FROM admissions
WHERE DATEDIFF(discharge_date, admission_date) > 6;

-- Question 3
SELECT
    patient_name,
    ward,
    DATEDIFF(discharge_date, admission_date) AS "Length of Stay",
    DATEDIFF(discharge_date, admission_date) * 2000 AS "Estimated Cost"
FROM admissions
WHERE discharge_date IS NOT NULL;

-- Question 4
SELECT
    ward,
    AVG(DATEDIFF(discharge_date, admission_date)) AS "Average Stay"
FROM admissions
WHERE discharge_date IS NOT NULL
GROUP BY ward
ORDER BY AVG(DATEDIFF(discharge_date, admission_date)) DESC;
