-- ============================================================
-- SQL Master
-- Lesson: SQL-072 — NULLIF()
-- ============================================================

-- Question 1
SELECT
    account_id,
    NULLIF(balance, 0) AS "Balance"
FROM accounts;

-- Question 2
SELECT
    account_id,
    balance / NULLIF(balance, 0) AS "Ratio"
FROM accounts;

-- Question 3
SELECT
    account_id,
    SUM(amount) / NULLIF(COUNT(*), 0) AS "Average Transaction Amount"
FROM transactions
GROUP BY account_id;

-- Question 4
SELECT
    account_number,
    account_type,
    balance
FROM accounts
WHERE NULLIF(balance, 0) IS NULL;
