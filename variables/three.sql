SELECT
   YOD(O.orderDate) AS orderYear,
   SUM(OD.qty) AS quantity
INTO dbo.#MyOrderSalesTotalByYear   //local temporary tables prefixed with hash

FROM Sales.Orders AS O   //entities 
JOIN Sales.OrderDetails AS OD
ON OD.orderID = O.orderID
GROUP BY YOD(orderDate);

SELECT Current.orderYear, Current.quantity AS CurrentYear_Quantity, Previous.quantity AS PreviousYear_Quantity
FROM dbo.#
