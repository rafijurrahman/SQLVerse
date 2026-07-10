-- ============================================================
-- SQL Master
-- Lesson: SQL-132 — Recursive CTE
-- Schema: Retail Analytics
-- Business Scenario: Recursive CTE
-- ============================================================

CREATE TABLE employees (
    employee_id   INT         PRIMARY KEY,
    first_name    VARCHAR(50) NOT NULL,
    last_name     VARCHAR(50) NOT NULL,
    manager_id    INT,
    department    VARCHAR(50) NOT NULL,
    level_name    VARCHAR(30) NOT NULL DEFAULT 'Staff'
);
INSERT INTO employees VALUES
(1,  'Arif',   'Hossain', NULL, 'Management', 'CEO'),
(2,  'Sultana','Begum',   1,    'HR',         'Head'),
(3,  'Karim',  'Molla',   1,    'IT',         'Head'),
(4,  'Nasrin', 'Akter',   2,    'HR',         'Manager'),
(5,  'Milon',  'Ahmed',   3,    'IT',         'Senior'),
(6,  'Tania',  'Rahman',  1,    'Sales',      'Head'),
(7,  'Rubel',  'Islam',   6,    'Sales',      'Manager'),
(8,  'Sumaiya','Khatun',  4,    'HR',         'Executive'),
(9,  'Farhan', 'Ali',     5,    'IT',         'Junior'),
(10, 'Mitu',   'Pal',     7,    'Sales',      'Executive');
