-- ============================================================
-- SQL Master
-- Lesson: SQL-013 — Wildcard (%)
-- Schema: Retail Sales
-- Business Scenario: Starts with pattern
-- ============================================================

CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) NOT NULL,
    phone       VARCHAR(20),
    city        VARCHAR(50)  NOT NULL
);
INSERT INTO customers VALUES
(1,  'Rahim',    'Uddin',    'rahim@shop.com',    '01711-001', 'Dhaka'),
(2,  'Rafiq',    'Miah',     'rafiq@shop.com',    '01811-002', 'Dhaka'),
(3,  'Ratan',    'Das',      'ratan@shop.com',    '01911-003', 'Chittagong'),
(4,  'Sumon',    'Ahmed',    'sumon@shop.com',    '01611-004', 'Sylhet'),
(5,  'Sara',     'Islam',    'sara@shop.com',     '01711-005', 'Rajshahi'),
(6,  'Sadia',    'Khatun',   'sadia@shop.com',    '01811-006', 'Dhaka'),
(7,  'Mitu',     'Begum',    'mitu@shop.com',     '01911-007', 'Barisal'),
(8,  'Milon',    'Roy',      'milon@shop.com',    '01611-008', 'Khulna'),
(9,  'Tania',    'Akter',    'tania@shop.com',    '01711-009', 'Dhaka'),
(10, 'Tamanna',  'Sultana',  'tamanna@shop.com',  '01811-010', 'Rangpur'),
(11, 'Nasrin',   'Parveen',  'nasrin@shop.com',   '01911-011', 'Dhaka'),
(12, 'Nadia',    'Haque',    'nadia@shop.com',    '01611-012', 'Sylhet');
