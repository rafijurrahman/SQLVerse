-- ============================================================
-- SQL Master
-- Lesson: SQL-067 — CASE
-- ============================================================

-- Question 1
SELECT
    account_number,
    balance,
    CASE WHEN balance >= 100000 THEN 'High Balance' WHEN balance >= 10000 THEN 'Medium Balance' ELSE 'Low Balance' END AS "Balance Category"
FROM accounts;

-- Question 2
SELECT
    account_number,
    status,
    CASE WHEN status = 'Active' THEN 'Open' WHEN status = 'Frozen' THEN 'Locked' ELSE 'Closed' END AS "Account State"
FROM accounts;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    a.balance,
    c.kyc_status,
    CASE WHEN c.kyc_status = 'Verified' AND a.balance > 100000 THEN 'Premium' WHEN c.kyc_status = 'Verified' AND a.balance > 10000 THEN 'Standard' ELSE 'Basic' END AS "Customer Segment"
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;

-- Question 4
SELECT
    account_number,
    status,
    balance
FROM accounts
ORDER BY CASE WHEN status = 'Active' THEN 1 WHEN status = 'Frozen' THEN 2 WHEN status = 'Inactive' THEN 3 ELSE 4 END;
