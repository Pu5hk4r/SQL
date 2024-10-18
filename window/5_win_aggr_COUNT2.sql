--OrderArchive contains duplicate order id and primary key

SELECT
	OrderID,
	COUNT(*) OVER (PARTITION BY OrderID) CheckPK
FROM Sales.OrdersArchive;

SELECT
*
FROM (
    SELECT
	    OrderID,
		COUNT(*) OVER (PARTITION BY OrderID) CheckPk
	FROM Sales.OrdersArchive
)t WHERE CheckPK > 1;

--QualityChecks: Identify Duplicates