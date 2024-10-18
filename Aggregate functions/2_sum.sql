-- sum() returns sum of all values in a column ,works only with numeric column, nulls are treated as 0

SELECT SUM(quantity) As sum_quantity
FROM orders