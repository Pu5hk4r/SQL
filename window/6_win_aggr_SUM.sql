--find the total sales across all orders
-- and the total sales for each product
--additionally provides details such orderID, orderdate

SELECT
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(Sales) OVER () TotalSales,
	SUM(Sales) OVER (PARTITION BY ProductID) SalesProducts
FROM Sales.Orders;

--find the percentage contribution of each product sales to the total sales
SELECT
OrderID,
ProductID,
Sales,
SUM(Sales) OVER () TotalSales,
ROUND (CAST(Sales AS Float) / SUM(Sales) OVER () * 100 ,2) PercentageOfTotal
FROM Sales.Orders
