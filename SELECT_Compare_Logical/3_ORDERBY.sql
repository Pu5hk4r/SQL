-- SELECT *
-- FROM customers

-- sorted by scores default sorting is ascending or use DESC
-- ORDER BY score ASC

-- retrieve all customers ,sorting, the result by country (alphabatically)
-- and the by score (highest first)
-- we can shoose column no instead of country = 4 

select * 
from customers
order by country asc, score desc
