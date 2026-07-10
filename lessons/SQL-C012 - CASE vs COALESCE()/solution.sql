-- ============================================================
-- SQL Master
-- Lesson: SQL-C012 — CASE vs COALESCE()
-- ============================================================

-- Question 1
SELECT
    CASE WHEN balance IS NULL THEN 0 ELSE balance END
FROM accounts;

SELECT
    COALESCE(balance, 0)
FROM accounts;

-- Question 2
SELECT
    balance,
    CASE WHEN balance = 0 THEN 'Zero' WHEN balance < 10000 THEN 'Low' ELSE 'High' END AS balance_tier
FROM accounts;

-- Question 3
SELECT
    COALESCE(email, 'No Email')
FROM customers;

SELECT
    first_name,
    last_name,
    CASE WHEN kyc_status = 'Rejected' THEN 'Blocked' WHEN email IS NULL THEN 'No Email' ELSE email END
FROM customers;

-- Question 4
SELECT
    account_id,
    balance,
    CASE WHEN COALESCE(balance, 0) > 100000 THEN 'Premium' WHEN COALESCE(balance, 0) > 10000 THEN 'Standard' ELSE 'Basic' END AS "Customer Tier"
FROM accounts;
