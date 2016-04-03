USE distributedTWO
GO

DECLARE @exampleParamter INT

BEGIN TRANSACTION addCustomer100

INSERT INTO tblCustomer (CustomerID, FirstName, LastName)
VALUES ('100', 'John', 'Smith')

SELECT @exampleParamater = COUNT(*) FROM tblCustomer WHERE CustomerID = '100'

IF @exampleParameter > 1

  BEGIN 
  ROLLBACK TRANSACTION addCustomer100
  PRINT 'Customer 100 was already in the database'
  END

ELSE 

  BEGIN
  COMMIT TRANSACTION addCusotme100
  PRINT 'Customer 100 added to the database'
  END

