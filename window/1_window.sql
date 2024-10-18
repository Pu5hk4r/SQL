--find the total sales for each product
--find the total sales across all orders
--Additionally provide details such as orders id, ordere date
/*SELECT
    OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY 
    OrderID,
	OrderDate,
	ProductID */

--find the total sales for each combination of products and order staus 

SELECT
	 OrderID,
	 OrderDate,
     ProductID,
	 OrderStatus,
	 Sales,
	 SUM(Sales) OVER() TotalSales,
     SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts,
	 SUM(Sales) OVER(PARTITION BY ProductID , OrderStatus) TotalSalesByProductsAndStatus

FROM Sales.Orders;



