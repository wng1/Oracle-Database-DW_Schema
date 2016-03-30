USE databaseOne

SELECT Grade

MONTH(MonthOfHire) Month_Of_Hire,
SUM(Holidays) Total_Holidays

FROM databaseONE.dbo.Employees
WHERE GRADE =  2
GROUP BY Grade, Holidays
HAVING Holidays > 14
ORDER BY Month_Of_Hire DESC
