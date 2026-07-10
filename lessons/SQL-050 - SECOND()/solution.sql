-- ============================================================
-- SQL Master
-- Lesson: SQL-050 — SECOND()
-- ============================================================

-- Question 1
SELECT
    SECOND(appointment_time) AS "Appointment Second"
FROM appointments;

-- Question 2
SELECT
    appointment_id,
    appointment_time,
    HOUR(appointment_time),
    MINUTE(appointment_time),
    SECOND(appointment_time)
FROM appointments;

-- Question 3
SELECT
    *
FROM appointments
WHERE SECOND(appointment_time) != 0;

-- Question 4
SELECT
    HOUR(appointment_time) AS "Hour",
    MINUTE(appointment_time) AS "Minute",
    SECOND(appointment_time) AS "Second",
    TIME_FORMAT(appointment_time, '%H:%i:%s') AS "Formatted Time"
FROM appointments;
