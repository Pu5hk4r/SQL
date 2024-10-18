-- AGGREGATE FN'S COUNT(),SUM(),AVG(),MAX(),MIN()

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(score) AS total_score
FROM customers