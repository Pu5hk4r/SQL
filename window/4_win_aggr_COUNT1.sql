-- find the total number of orders
--find the total number of order for  each customers
--Additionally provide details such as orderid, orderdate

SELECT
	OrderID,
	OrderDate,
	CustomerID,
	COUNT(*) OVER() TotalOrders,
	COUNT(*) OVER(PARTITION BY CustomerID) OrdersBYCustomers 
FROM Sales.Orders;

SELECT
*,
COUNT(*) OVER() TotalCustomersStar, -- find total number of customers
COUNT(1) OVER() TotalcustomerOne,
COUNT(Score) OVER() Totalscores,
COUNT(Country) OVER() TotalCountries
FROM Sales.Customers;

--check whether the table 'orders' contains any duplicate rows
SELECT
	OrderID,
	COUNT(*) OVER (PARTITION BY OrderID) CheckPK
FROM Sales.Orders;

SELECT
	OrderID,
	COUNT(*) OVER (PARTITION BY OrderID) CheckPK
FROM Sales.OrdersArchive;

/*

#1 Overall Analysis
#2 Category Analysis
#3 Quality Checks: Identify NULLs

*/