SELECT tblProduct.PID, ProductName, ProductDescription
FROM Product.tblProduct
LEFT JOIN Product.tblProductSales
ON tblProduct.PID = tblProductSales.PID
WHERE tblProductSales.PID IS NULL

-- Highlights the products not been sold

SELECT ProductName
(SELECT SUM(NoOfProductsSold) FROM Product.tblProductSales WHERE PID = tblProduct.PID) AS QuantitySold
FROM Product.tblProduct
