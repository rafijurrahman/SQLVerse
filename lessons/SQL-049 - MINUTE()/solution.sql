-- ============================================================
-- SQL Master
-- Lesson: SQL-049 — MINUTE()
-- ============================================================

-- Question 1
SELECT
    MINUTE(appointment_time) AS "Appointment Minute"
FROM appointments;

-- Question 2
SELECT
    *
FROM appointments
WHERE MINUTE(appointment_time) = 0;

-- Question 3
SELECT
    *
FROM appointments
WHERE MINUTE(appointment_time) NOT IN (0, 15, 30, 45);

-- Question 4
SELECT
    appointment_id,
    patient_name,
    HOUR(appointment_time) AS "Hour",
    MINUTE(appointment_time) AS "Minute",
    SECOND(appointment_time) AS "Second"
FROM appointments
ORDER BY HOUR(appointment_time), MINUTE(appointment_time);
