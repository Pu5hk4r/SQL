-- full join some sql does not support full join , indeed supports it try to avoid it as much as possible
-- for small table full join will work]
-- for large tables its is cubersome to use 
SELECT 
	c.customer_id,   -- c tells this is from customers table
	c.first_name,    
	o.order_id,      -- o tells this is from order table
	o.quantity
FROM customers AS c          -- aliases
LEFT JOIN orders AS o                  -- join type
ON c.customer_id = o.customer_id    -- join key
UNION
SELECT 
	c.customer_id,   -- c tells this is from customers table
	c.first_name,    
	o.order_id,      -- o tells this is from order table
	o.quantity
FROM customers AS c          -- aliases
RIGHT JOIN orders AS o                  -- join type
ON c.customer_id = o.customer_id    -- join key