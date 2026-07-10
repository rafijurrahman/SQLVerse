-- ============================================================
-- SQL Master
-- Lesson: SQL-039 — POSITION()
-- Schema: HR Management
-- Business Scenario: Position of text
-- ============================================================

CREATE TABLE employees (
    employee_id   INT          PRIMARY KEY,
    employee_code VARCHAR(15)  NOT NULL,
    first_name    VARCHAR(50)  NOT NULL,
    last_name     VARCHAR(50)  NOT NULL,
    email         VARCHAR(100) NOT NULL,
    phone         VARCHAR(20)  NOT NULL,
    job_title     VARCHAR(80)  NOT NULL,
    department    VARCHAR(50)  NOT NULL,
    salary        DECIMAL(10,2) NOT NULL,
    hire_date     DATE         NOT NULL,
    manager_id    INT
);
INSERT INTO employees VALUES
(1, 'EMP-001', 'Arif',    'Hossain',  'arif.h@company.com',    '01711-1001', 'Chief Executive Officer', 'Management', 350000.00, '2018-03-01', NULL),
(2, 'EMP-002', 'Sultana', 'Begum',    'sultana.b@company.com', '01811-1002', 'Head of HR',              'HR',         180000.00, '2019-06-15', 1),
(3, 'EMP-003', 'Karim',   'Molla',    'karim.m@company.com',   '01911-1003', 'Senior Developer',        'IT',         120000.00, '2020-01-10', 1),
(4, 'EMP-004', 'Nasrin',  'Akter',    'nasrin.a@company.com',  '01611-1004', 'HR Manager',              'HR',          95000.00, '2020-09-20', 2),
(5, 'EMP-005', 'Milon',   'Ahmed',    'milon.a@company.com',   '01711-1005', 'Junior Developer',        'IT',          55000.00, '2021-04-01', 3),
(6, 'EMP-006', 'Tania',   'Rahman',   'tania.r@company.com',   '01811-1006', 'Sales Manager',           'Sales',      105000.00, '2019-11-15', 1),
(7, 'EMP-007', 'Rubel',   'Islam',    'rubel.i@company.com',   '01911-1007', 'Sales Executive',         'Sales',       60000.00, '2021-08-01', 6),
(8, 'EMP-008', 'Sumaiya', 'Khatun',   'sumaiya.k@company.com', '01611-1008', 'Accountant',              'Finance',     75000.00, '2020-03-15', 1),
(9, 'EMP-009', 'Farhan',  'Ali',      'farhan.a@company.com',  '01711-1009', 'Finance Manager',         'Finance',    110000.00, '2019-07-20', 1),
(10,'EMP-010', 'Mitu',    'Pal',      'mitu.p@company.com',    '01811-1010', 'HR Executive',            'HR',          48000.00, '2022-01-10', 4);
