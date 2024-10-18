-- List customer_id ,first_name , order_id , quantity include all orders .regardless of whether there is matching customers

SELECT 
	c.customer_id,   -- c tells this is from customers table
	c.first_name,    
	o.order_id,      -- o tells this is from order table
	o.quantity
FROM customers AS c          -- aliases
RIGHT JOIN orders AS o                  -- join type
ON c.customer_id = o.customer_id    -- join key