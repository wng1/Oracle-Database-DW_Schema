CREATE FUNCTION dbo.getNumberOfOrders
(
   @customerID int
)
RETURN INT
AS 
BEGIN

DECLARE @noOfOrders int
        SELECT @noOfOrders = COUNT(*) FROM Orders WHERE customerID=@customerID
        RETURN @noOfOrders

END

SELECT customerID, FirstName, LastName, dbo.getNumberOfOrders(customerID) as MYCOUNT
FROM Customers
WHERE dbo.getNumberOfOrders(CustomerID) > 0
ORDER BY MYCOUNT DSEC

