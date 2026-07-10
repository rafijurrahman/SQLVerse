-- ============================================================
-- SQL Master
-- Lesson: SQL-069 — CASE in ORDER BY
-- ============================================================

-- Question 1
SELECT
    *
FROM accounts
ORDER BY CASE WHEN status = 'Active' THEN 1 WHEN status = 'Frozen' THEN 2 WHEN status = 'Inactive' THEN 3 ELSE 4 END;

-- Question 2
SELECT
    *
FROM transactions
ORDER BY CASE WHEN risk_level = 'High' THEN 1 WHEN risk_level = 'Medium' THEN 2 WHEN risk_level = 'Low' THEN 3 ELSE 4 END;

-- Question 3
SELECT
    *
FROM accounts
ORDER BY CASE WHEN status = 'Frozen' THEN 1 WHEN status = 'Inactive' THEN 2 WHEN status = 'Active' THEN 3 ELSE 4 END;

-- Question 4
SELECT
    account_number,
    status,
    balance
FROM accounts
ORDER BY CASE WHEN status = 'Frozen' THEN 1 WHEN status = 'Inactive' THEN 2 WHEN status = 'Active' THEN 3 ELSE 4 END ASC, balance DESC;
