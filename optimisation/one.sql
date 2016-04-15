SELECT c.CustomerID, SUM(TotalAmount)
FROM Sales.SalesDetail sd INNER JOIN Sales.SalesHeader c
ON sd.SalesDetailsID = c.SalesHeader
GROUP BY c.CustomerID
