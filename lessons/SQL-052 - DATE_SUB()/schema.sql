-- ============================================================
-- SQL Master
-- Lesson: SQL-052 — DATE_SUB()
-- Schema: Hospital Management
-- Business Scenario: Previous appointment
-- ============================================================

CREATE TABLE appointments (
    appointment_id   INT         PRIMARY KEY,
    patient_name     VARCHAR(100) NOT NULL,
    doctor_name      VARCHAR(100) NOT NULL,
    specialty        VARCHAR(50)  NOT NULL,
    appointment_date DATE         NOT NULL,
    appointment_time TIME         NOT NULL,
    status           VARCHAR(20)  NOT NULL
);
INSERT INTO appointments VALUES
(1, 'Rahim Uddin',   'Dr. Karim',   'Cardiology',      '2024-01-15', '09:00:00', 'Completed'),
(2, 'Fatema Begum',  'Dr. Sultana', 'Gynecology',       '2024-01-20', '10:30:00', 'Completed'),
(3, 'Milon Ahmed',   'Dr. Karim',   'Cardiology',       '2024-02-05', '08:45:00', 'Scheduled'),
(4, 'Nasrin Akter',  'Dr. Rahman',  'Neurology',        '2024-02-14', '14:00:00', 'Completed'),
(5, 'Farhan Ali',    'Dr. Sultana', 'Gynecology',       '2024-03-01', '11:15:00', 'Cancelled'),
(6, 'Tania Rahman',  'Dr. Hasan',   'Orthopedics',      '2024-03-10', '09:30:00', 'Completed'),
(7, 'Rubel Islam',   'Dr. Karim',   'Cardiology',       '2024-03-22', '15:00:00', 'Scheduled'),
(8, 'Sumaiya Khatun','Dr. Rahman',  'Neurology',        '2024-04-05', '10:00:00', 'Completed'),
(9, 'Arif Hossain',  'Dr. Hasan',   'Orthopedics',      '2024-04-18', '13:45:00', 'Scheduled'),
(10,'Mitu Pal',      'Dr. Sultana', 'Gynecology',       '2024-05-02', '08:00:00', 'Completed');
