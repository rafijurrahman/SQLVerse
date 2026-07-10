-- ============================================================
-- SQL Master
-- Lesson: SQL-043 — CURRENT_TIMESTAMP
-- ============================================================

-- Question 1
SELECT
    appointment_id,
    patient_name,
    CURRENT_TIMESTAMP AS "Server Time"
FROM appointments;

-- Question 2
SELECT
    appointment_id,
    patient_name,
    appointment_date,
    appointment_time,
    CURRENT_TIMESTAMP AS "Report Generated At"
FROM appointments;

-- Question 3
SELECT
    *,
    CURRENT_TIMESTAMP AS "Audit Time"
FROM appointments
WHERE status = 'Completed';

-- Question 4
SELECT
    appointment_id,
    patient_name,
    CONCAT(appointment_date, ' ', appointment_time) AS "Appointment DateTime",
    CURRENT_TIMESTAMP AS "Now"
FROM appointments;
