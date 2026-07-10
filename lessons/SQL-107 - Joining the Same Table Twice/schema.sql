-- ============================================================
-- SQL Master
-- Lesson: SQL-107 — Joining the Same Table Twice
-- Schema: HR Management
-- Business Scenario: Same table twice
-- ============================================================

CREATE TABLE employees (
    employee_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    job_title   VARCHAR(80)  NOT NULL,
    department  VARCHAR(50)  NOT NULL,
    salary      DECIMAL(10,2) NOT NULL,
    manager_id  INT
);
INSERT INTO employees VALUES
(1,'Arif',   'Hossain','CEO',             'Management',350000.00,NULL),
(2,'Sultana','Begum',  'Head of HR',      'HR',        180000.00,1),
(3,'Karim',  'Molla',  'Senior Developer','IT',        120000.00,1),
(4,'Nasrin', 'Akter',  'HR Manager',      'HR',         95000.00,2),
(5,'Milon',  'Ahmed',  'Junior Developer','IT',         55000.00,3),
(6,'Tania',  'Rahman', 'Sales Manager',   'Sales',     105000.00,1),
(7,'Rubel',  'Islam',  'Sales Executive', 'Sales',      60000.00,6),
(8,'Sumaiya','Khatun', 'Accountant',      'Finance',    75000.00,1),
(9,'Farhan', 'Ali',    'Finance Manager', 'Finance',   110000.00,1),
(10,'Mitu',  'Pal',    'HR Executive',    'HR',         48000.00,4);
