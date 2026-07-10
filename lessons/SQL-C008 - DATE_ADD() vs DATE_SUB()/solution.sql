-- ============================================================
-- SQL Master
-- Lesson: SQL-C008 — DATE_ADD() vs DATE_SUB()
-- ============================================================

-- Question 1
SELECT
    appointment_id,
    patient_name,
    DATE_ADD(appointment_date, INTERVAL 7 DAY) AS "One Week Later",
    DATE_SUB(appointment_date, INTERVAL 7 DAY) AS "One Week Earlier"
FROM appointments;

-- Question 2
SELECT
    *
FROM appointments
WHERE appointment_date BETWEEN DATE_SUB('2024-03-10', INTERVAL 14 DAY) AND DATE_ADD('2024-03-10', INTERVAL 14 DAY);

-- Question 3
SELECT
    *
FROM appointments
WHERE appointment_date BETWEEN CURRENT_DATE AND DATE_ADD(CURRENT_DATE, INTERVAL 3 DAY);

SELECT
    patient_name,
    appointment_date,
    DATE_ADD(appointment_date, INTERVAL 7 DAY) AS follow_up_date
FROM appointments
WHERE appointment_date < CURRENT_DATE;

-- Question 4
SELECT
    patient_name,
    appointment_date,
    DATE_ADD(appointment_date, INTERVAL 30 DAY) AS "30 Days Later",
    DATE_SUB(appointment_date, INTERVAL 30 DAY) AS "30 Days Earlier"
FROM appointments
WHERE appointment_date BETWEEN '2024-01-01' AND '2024-03-31';
