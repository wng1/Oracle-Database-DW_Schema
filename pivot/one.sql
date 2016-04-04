DECLARE @ColumnNames NVARCHAR(MAX) = ''
DECLARE @SQL NVARCHAR(MAX) = ''

SELECT @ColumnNames += QUOTENAME(Year) + ','
FROM tblOrders

SET @ColumnNames = LEFT(@ColumnNames,LEN(@ColumnNames) -1)

SET @SQL='
SELECT * FROM
( SELECT Year,
         Country AS [ ],

FROM tblOrders AS o 
INNER JOIN tblCountry AS c ON c.countryID = o.orderCountryID)  AS Base

PIVOT( COUNT(orderCountryID) 
FOR YEAR
IN (' + @ColumnNames + ')) AS PivotTable'

EXECUTE @SQL




//Result
Country | 2010 | 2011 | 2012 | 2013 | 2014 | 2015 | 2016 |
UK         1       0      0      1       1     1      1
USA        2       1      3      5      4      1      2
