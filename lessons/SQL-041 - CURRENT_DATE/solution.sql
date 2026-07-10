-- ============================================================
-- SQL Master
-- Lesson: SQL-041 — CURRENT_DATE
-- ============================================================

-- Question 1
SELECT
    *,
    CURRENT_DATE
FROM appointments;

-- Question 2
SELECT
    *
FROM appointments
WHERE appointment_date < CURRENT_DATE;

-- Question 3
SELECT
    patient_name,
    doctor_name,
    appointment_date
FROM appointments
WHERE appointment_date >= CURRENT_DATE;

-- Question 4
SELECT
    *,
    DATEDIFF(CURRENT_DATE, appointment_date) AS "Days Ago"
FROM appointments
WHERE status = 'Completed'
ORDER BY DATEDIFF(CURRENT_DATE, appointment_date) ASC;
