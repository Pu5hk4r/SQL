

SELECT
last_name,
TRIM(last_name) As clean_last_name ,
LENGTH(last_name) AS len_last_name,
LENGTH(TRIM(last_name)) As clean_LEN_last_name
FROM customers