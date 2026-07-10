-- ============================================================
-- SQL Master
-- Lesson: SQL-054 — DATE_FORMAT()
-- ============================================================

-- Question 1
SELECT
    appointment_date,
    DATE_FORMAT(appointment_date, '%d-%m-%Y') AS "Formatted Date"
FROM appointments;

-- Question 2
SELECT
    appointment_date,
    DATE_FORMAT(appointment_date, '%M %Y') AS "Month Year"
FROM appointments;

-- Question 3
SELECT
    patient_name,
    doctor_name,
    DATE_FORMAT(appointment_date, '%d %M %Y') AS "Appointment Date",
    TIME_FORMAT(appointment_time, '%h:%i %p') AS "Appointment Time"
FROM appointments;

-- Question 4
SELECT
    appointment_id,
    patient_name,
    DATE_FORMAT(appointment_date, '%W, %d %M %Y') AS "Full Date"
FROM appointments
ORDER BY appointment_date;
