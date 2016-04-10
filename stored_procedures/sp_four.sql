SELECT * ALL FROM Sales.SalesProduct
SELECT * ALL FROM Sales.SalesDetailProduct

-- Quick review on the values of the column

 --run this stored procedure
 
 sp_four  100, 100
 
 CREATE PROCEDURE sp_four
 @PID   INT  
 @SellQuantity INT
 
 AS 
 BEGIN
 
 DECLARE @StockAvailability INT
 
 SELECT @StockAvailability = QuantityAvailable
 -- Column in Sales table
 
 FROM Sales.SalesProduct WHERE PID = @PID
 
 -- run a handling
