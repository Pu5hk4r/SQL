-- trim() Ltrim, Rtrim

SELECT
last_name
FROM customers ; -- Pipps has whitespace from the left

SELECT
TRIM(last_name) As clean_last_name 
FROM customers