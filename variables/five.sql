//TT-SQL   User Defined Function

CREATE FUNCTION dbo.calculateAge
(
@DOB AS DATETIME
@CURRENTDATE AS DATETIME
)
RETURN INT
AS
BEGIN
  RETURN  DATEDIFF (year, @DOB, @CURRENTDATE) 
  - CASE WHEN 100 * MONTH(@CURRENTDATE) + DAY(@CURRENTDATE)   
  < 100 * MONTH(@DOB) + DAY(@DOB)
  THEN 1
  ELSE 0
  END
  END
  GO
  
  
  SELECT EmpID, FirstName, LastName, dbo.calculateAge(DOB, CURRENT_TIMESTAMP) AS Age
  FROM HR.Employees
  
  //use the dob and calculate the age by the current date
