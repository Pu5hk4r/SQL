SELECT
OrderId,
OrderDate,
OrderStatus,
ProductID,
Sales,
SUM(Sales) OVER	 (PARTITION BY OrderStatus ORDER BY OrderDate 
ROWS 2 PRECEDING ) TotalSales
--ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) TotalSales
--ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING ) Totalsales
FROM Sales.Orders
WHERE ProductID IN (101 , 102);

--Rank customer based on their total sales
/* window fns can bve used by together with GROUP BY
in the same query only if the same column are used */
SELECT
	CustomerID,
	SUM(Sales)  TotalSales,
	RANK() OVER(ORDER BY SUM(Sales) DESC ) RankCustomers
FROM Sales.Orders
GROUP BY CustomerID


