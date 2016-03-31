DECLARE @empname AS NVARCHAR(50);

SET @empname = (SELECT FirstName + ' ' + LastName FROM Employees WHERE EmpID = 1);

SELECT @empname AS Employee Name



//result

Employee Name
-------------
John Smith
