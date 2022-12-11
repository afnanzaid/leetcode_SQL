1581. Customer Who Visited but Did Not Make Any Transactions

SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits
WHERE visit_id not in (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id