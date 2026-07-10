-- ============================================================
-- SQL Master
-- Lesson: SQL-048 — HOUR()
-- ============================================================

-- Question 1
SELECT
    HOUR(appointment_time) AS "Appointment Hour"
FROM appointments;

-- Question 2
SELECT
    HOUR(appointment_time) AS "Hour",
    COUNT(*)
FROM appointments
GROUP BY HOUR(appointment_time)
ORDER BY HOUR(appointment_time);

-- Question 3
SELECT
    HOUR(appointment_time) AS "Hour",
    COUNT(*) AS "Total Appointments"
FROM appointments
GROUP BY HOUR(appointment_time)
ORDER BY COUNT(*) DESC;

-- Question 4
SELECT
    CASE WHEN HOUR(appointment_time) < 12 THEN 'Morning' ELSE 'Afternoon' END AS "Shift",
    COUNT(*)
FROM appointments
GROUP BY CASE WHEN HOUR(appointment_time) < 12 THEN 'Morning' ELSE 'Afternoon' END;
