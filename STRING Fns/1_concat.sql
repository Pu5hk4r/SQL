-- string fns concat() ,Lower(), upper(),trim(),length(),substring()
-- list all customer name is combination of first name and last name 

SELECT 
CONCAT(first_name, ' ', last_name) AS customer_name
FROM customers;

SELECT 
    first_name, 
    last_name, 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;


