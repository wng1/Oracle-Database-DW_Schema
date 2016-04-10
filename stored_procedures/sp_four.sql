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

IF (@StockAvailability < @SellQuantity)
BEGIN 
RAISEERROR("The sell quantity is higher than the available stock. Please try again", 16,1)  
-- ERROR_SEVERITY    GENERAL 16
END

ELSE

BEGIN
BEGIN TRY
BEGIN TRANSACTION 

UPDATE Product.ProductDetails SET QuantityAvailable = (QuantityAvailable - @SellQuantity)
-- Deduct the requested amount from the products table
WHERE PID = @PID

-- Now to assign an unique order transaction id
COMMIT TRANSACTION

END TRY

BEGIN CATCH 
ROLLBACK TRANSACTION
-- Include the raiseError message to verify this step has been passed if the transaction cannot be committed
END CATCH
 END
END
