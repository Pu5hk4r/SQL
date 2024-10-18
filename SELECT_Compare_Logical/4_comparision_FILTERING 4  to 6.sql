-- list only germany customer

SELECT *
FROM customers 
WHERE country = 'Germany';

-- find all customers whose score is higher than 500
select * from customers where score > 500 ;

-- find all customers whose score is lesser than 500
select * from customers where score < 500 ;
select * from customers where score >= 500 ;

select * from customers where country != 'Germany'


