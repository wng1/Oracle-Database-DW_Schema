SELECT
   YOD(O.orderDate) AS orderYear,
   SUM(OD.qty) AS quantity
INTO dbo.#MyOrderSalesTotalByYear   //local temporary tables prefixed with hash
                                    //local temporary table is visible only to that session created

FROM Sales.Orders AS O   //entities 
JOIN Sales.OrderDetails AS OD
ON OD.orderID = O.orderID
GROUP BY YOD(orderDate);

SELECT Current.orderYear, Current.quantity AS CurrentYear_Quantity, Previous.quantity AS PreviousYear_Quantity
FROM dbo.#MyOrderSalesTotalByYear
LEFT OUTER JOIN dbo.#MyOrderSalesTotalByYear AS Previous
ON Current.orderYear = Previous.orderYear + 1;

//Result

orderYear 
2015

orderYear  quantity
2015        100

orderYear  CurrentYear_quantity     PreviousYear_quantity
2015        100                      200

orderYear  CurrentYear_quantity     PreviousYear_quantity
2015        100                      200
2016        200                      100

