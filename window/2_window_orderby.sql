--Rank each order based on their sales from highest to lowest
--additionally provide details such as orderid & order date

SELECT
	OrderId,
	OrderDate,
	Sales,
	Rank() OVER (ORDER BY Sales DESC ) RankSales
FROM Sales.Orders