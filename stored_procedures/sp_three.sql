CREATE PROC spGetCustomer(@FirstName VARCHAR(MAX)))
AS
BEGIN

DECLARE @ID INT

SAVE TRANSACTION addCustomer

INSERT INTO tblCustomer (FirstName) 
VALUES (@FirstName)

IF(SELECT COUNT(*) FROm tblCustomer WHERE @FirstName = firstName) > 1
BEGIN 
PRINT 'The customer already exists'
ROLLBACK TRANSACTION 
END

SELECT @ID = CustomerID FROM tblCustomer WHERE firstName = @firstName

RETURN @ID

END
