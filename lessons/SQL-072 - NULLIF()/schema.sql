-- ============================================================
-- SQL Master
-- Lesson: SQL-072 — NULLIF()
-- Schema: Banking System
-- Business Scenario: NULL handling
-- ============================================================

CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100),
    phone       VARCHAR(20),
    city        VARCHAR(50)  NOT NULL,
    kyc_status  VARCHAR(20)  NOT NULL
);
CREATE TABLE accounts (
    account_id     INT           PRIMARY KEY,
    customer_id    INT           NOT NULL,
    account_number VARCHAR(20)   NOT NULL,
    account_type   VARCHAR(30)   NOT NULL,
    balance        DECIMAL(12,2) NOT NULL,
    status         VARCHAR(20)   NOT NULL
);
CREATE TABLE transactions (
    transaction_id   INT           PRIMARY KEY,
    account_id       INT           NOT NULL,
    transaction_date DATE          NOT NULL,
    amount           DECIMAL(12,2) NOT NULL,
    transaction_type VARCHAR(20)   NOT NULL,
    category         VARCHAR(50),
    risk_level       VARCHAR(10)   NOT NULL
);
INSERT INTO customers VALUES
(1,'Rahim',   'Uddin',  'rahim@bank.com',   '01711-001','Dhaka',      'Verified'),
(2,'Fatema',  'Begum',  'fatema@bank.com',  NULL,       'Chittagong', 'Verified'),
(3,'Karim',   'Molla',  NULL,               '01911-003','Dhaka',      'Pending'),
(4,'Nasrin',  'Akter',  'nasrin@bank.com',  '01611-004','Sylhet',     'Verified'),
(5,'Milon',   'Ahmed',  NULL,               NULL,       'Rajshahi',   'Pending'),
(6,'Tania',   'Rahman', 'tania@bank.com',   '01811-006','Dhaka',      'Rejected');
INSERT INTO accounts VALUES
(101,1,'ACC-1001','Savings',  150000.00,'Active'),
(102,2,'ACC-1002','Current',   85000.00,'Active'),
(103,3,'ACC-1003','Savings',    5000.00,'Inactive'),
(104,4,'ACC-1004','Savings',  320000.00,'Active'),
(105,5,'ACC-1005','Current',      0.00,'Active'),
(106,6,'ACC-1006','Savings',   12000.00,'Frozen');
INSERT INTO transactions VALUES
(1,101,'2024-01-05', 50000.00,'Credit','Salary',    'Low'),
(2,101,'2024-01-10', 15000.00,'Debit', 'Shopping',  'Low'),
(3,102,'2024-01-15',180000.00,'Credit','Transfer',   'High'),
(4,102,'2024-01-20',  8000.00,'Debit', 'Utilities',  'Low'),
(5,103,'2024-02-01', 95000.00,'Debit', 'Unknown',   'High'),
(6,104,'2024-02-10',  5000.00,'Credit','Interest',   'Low'),
(7,104,'2024-02-15', 12000.00,'Debit', 'Medical',    'Low'),
(8,105,'2024-03-01', 25000.00,'Credit','Business',  'Medium'),
(9,106,'2024-03-10',  3500.00,'Debit', 'Unknown',   'High'),
(10,101,'2024-03-15',200000.00,'Credit','Unknown',  'High');
