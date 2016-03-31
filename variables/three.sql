SELECT
   YOD(O.orderDate) AS OrderYear,
   SUM(OD.qty) AS Quantity
INTO dbo.#MyOrderSalesTotalByYear   //local temporary tables prefixed with hash

FROM Sales.Orders AS O   //entities 
JOIN Sales.OrderDetails AS OD
ON OD.orderID = O.orderID
GROUP BY YOD(orderDate);
