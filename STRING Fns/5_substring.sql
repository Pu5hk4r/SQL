-- substring(column, start, length)
SELECT
last_name,
SUBSTRING(last_name , 2, 3) as sub_last_name
FROM customers