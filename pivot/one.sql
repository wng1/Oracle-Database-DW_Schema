DECLARE @ColumnNames NVARCHAR(MAX) = ''

SELECT @ColumnNames += QUOTENAME(Year) + ','
FROM Orders

SET @ColumnNames = LEFT(@ColumnNames,LEN(@ColumnNames) -1)

PRINT @ColumnNames

//Result
| 2010 | 2011 | 2012 | 2013 | 2014 | 2015 | 2016 |
