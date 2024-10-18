-- unions

SELECT
	c.first_name,
	c.last_name,
	c.country
FROM customers AS c
UNION
SELECT
	e.first_name,
	e.last_name,
	e.emp_country
FROM employees AS e