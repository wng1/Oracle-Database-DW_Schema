SELECT tblProduct.PID, ProductName, ProductDescription
FROM Product.tblProduct
LEFT JOIN Product.tblProductSales
ON tblProduct.PID = tblProductSales.PID
WHERE tblProductSales.PID IS NULL

