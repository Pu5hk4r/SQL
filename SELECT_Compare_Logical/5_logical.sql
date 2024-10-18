Select * from customers;

 -- FIND ALL THE CUSTOMERS WHO CAME FROM GERMANY ANAD WHOSE SCORE IS LESS THAN 400
 SELECT *
 FROM customers
 WHERE country = 'Germany' AND score < 400;
 
 select * from customers where country = 'Germany' OR score < 400;
 
 select * from customers where  NOT  score < 400 ;
 
 -- find all the customers whose score falls in the range of  range between 100 and 500
 
 select * from customers where score BETWEEN 100 and 500  
 
 -- other ways 
 
 select * from customers where score >= 100 AND score <= 500
 
 
 -- find customers whose ids is eqal to0 1,2 or 5
 
 SELECT *
 FROM customers
 WHERE customer_id IN (1,2,5)
 
 -- select * from customers where customer_id =1 or customer_id = 2 or customer_id = 5
 
 -- find all customers whsoe name first name starts with m
Select * from customers where first_name LIKE '%M';
 
Select * from customers where first_name LIKE '%n';
 
 
 
 
 
 
 