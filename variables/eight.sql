USE databaseONE
GO

SELECT PID, ProductName, "Product Price"

CASE
WHEN Price = 0 THEN 'Product not on sale'
WHEN Price < 100 THEN 'Under £100'
WHEN Price >=100 AND Price <=200 THEN 'Between 100 and 200'
ELSE 'Over £200'
END

FROM Production.Product
ORDER BY PID;
GO
