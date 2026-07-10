-- ============================================================
-- SQL Master
-- Lesson: SQL-068 — CASE with Multiple Conditions
-- ============================================================

-- Question 1
SELECT
    transaction_id,
    transaction_type,
    amount,
    CASE WHEN transaction_type = 'Credit' AND amount > 100000 THEN 'Large Credit' WHEN transaction_type = 'Credit' AND amount > 10000 THEN 'Medium Credit' WHEN transaction_type = 'Credit' THEN 'Small Credit' WHEN transaction_type = 'Debit' AND amount > 50000 THEN 'Large Debit' ELSE 'Small Debit' END AS "Transaction Class"
FROM transactions;

-- Question 2
SELECT
    transaction_id,
    risk_level,
    transaction_type,
    CASE WHEN risk_level = 'High' AND transaction_type = 'Debit' THEN 'ALERT' WHEN risk_level = 'High' AND transaction_type = 'Credit' THEN 'REVIEW' ELSE 'NORMAL' END AS "Action Required"
FROM transactions;

-- Question 3
SELECT
    transaction_id,
    risk_level,
    amount,
    CASE WHEN risk_level = 'High' AND amount > 100000 THEN 'CRITICAL' WHEN risk_level = 'High' THEN 'WARNING' ELSE 'NORMAL' END AS "Audit Level"
FROM transactions;

-- Question 4
SELECT
    action_category,
    COUNT(*) AS "Transaction Count"
FROM ( SELECT CASE WHEN risk_level = 'High' AND transaction_type = 'Debit' THEN 'ALERT' WHEN risk_level = 'High' AND transaction_type = 'Credit' THEN 'REVIEW' ELSE 'NORMAL' END AS action_category FROM transactions ) AS t
GROUP BY action_category;
