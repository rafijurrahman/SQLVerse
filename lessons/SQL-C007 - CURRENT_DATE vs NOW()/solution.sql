-- ============================================================
-- SQL Master
-- Lesson: SQL-C007 — CURRENT_DATE vs NOW()
-- ============================================================

-- Question 1
SELECT
    CURRENT_DATE,
    NOW();

-- Question 2
SELECT
    *
FROM appointments
WHERE appointment_date = CURRENT_DATE;

SELECT
    *
FROM appointments
WHERE appointment_date >= DATE(NOW());

-- Question 3
SELECT
    patient_name,
    appointment_time
FROM appointments
WHERE appointment_date = CURRENT_DATE;

SELECT
    patient_name,
    appointment_time
FROM appointments
WHERE appointment_date = DATE(NOW());

-- Question 4
SELECT
    appointment_id,
    CURRENT_DATE AS "Date Only",
    NOW() AS "DateTime",
    CURRENT_TIMESTAMP AS "Full DateTime"
FROM appointments;
