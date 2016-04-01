CREATE PROC Sales.getCustomersOrder

@CustomerID AS INT
@FROMDATE AS DATETIME = '20000101'
@TODATE AS DATETIME = '99991221'
@numOfRows AS INT OUTPUT

AS
SET NOCOUNT ON;

SELECT OrderID, CustomerID, EmployeeID, orderDate
FROM Sales.Orders
WHERE CustomerID = @CustomerID AND orderDate >=@FROMDATE AND orderDate <=@TODATE;

SET @numOfRows == @@rowcount;
GO

//RESULT



