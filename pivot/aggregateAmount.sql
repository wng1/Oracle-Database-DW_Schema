//Expected Output

ProductID   | ProductName  | Total

A02893        Dishes         292
D02933        Foam           505
F23923        PCB            1902


SELECT ProductID, ProductName
SUM(Amount) AS Total    //aggregates all the amount for each product
FROM Sales.SalesInformation
GROUP BY ProductID, ProductName  // sort order 
