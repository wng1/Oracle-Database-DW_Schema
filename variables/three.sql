SELECT
   YOD(O.orderDate) AS OrderYear,
   SUM(OD.qty) AS Quantity
INTO dbo.#MyOrderSalesTotalByYear

FROM Sales.Orders AS O   //entities 

