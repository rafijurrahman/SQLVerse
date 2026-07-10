-- ============================================================
-- SQL Master
-- Lesson: SQL-042 — CURRENT_TIME
-- ============================================================

-- Question 1
SELECT
    *,
    CURRENT_TIME
FROM appointments;

-- Question 2
SELECT
    appointment_id,
    appointment_time,
    CURRENT_TIME,
    CASE WHEN appointment_time < CURRENT_TIME THEN 'Past' ELSE 'Future' END AS "Time Comparison"
FROM appointments;

-- Question 3
SELECT
    *
FROM appointments
WHERE appointment_time < '12:00:00';

-- Question 4
SELECT
    appointment_id,
    patient_name,
    appointment_time,
    CURRENT_TIME AS "Now",
    TIMEDIFF(appointment_time, '09:00:00') AS "Time After 9AM"
FROM appointments
ORDER BY appointment_time;
