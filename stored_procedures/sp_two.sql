CREATE PROCEDURE User.updateCustomerDetails
@CustomerID INT,
@Title NVARCHAR(10),
@SubscriptionFrequency TINYINT

WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;
 BEGIN TRY
 BEGIN TRANSACTION;
 
 UPDATE User.Customer
 
 COMMIT TRANSACTION;
 END TRY;
 
 BEGIN CATCH
 
 IF @@TRANSCOUNT > 0
 BEGIN
 ROLLBACK TRANSACTION;
 END
 
 EXECUTE dbo.logError;
 END CATCH
 
 END;
 