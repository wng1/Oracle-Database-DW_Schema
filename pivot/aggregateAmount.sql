//Expected Output

ProductID   | ProductName  | Total

A02893        Dishes         292
D02933        Foam           505
F23923        PCB            1902
G29328        Dishes         302

SELECT ProductID, ProductName
SUM(Amount) AS Total    //aggregates all the amount for each product
FROM Sales.SalesInformation
GROUP BY ProductID, ProductName  // sort order 


//Multiple Product Names but different types can be reworded or better presented using cross tabs

SELECT ProductID, Dishes, Foam, PCB  
FROM Sales.SalesInformation
PIVOT
(

SUM (Amount) 
FOR ProductName
IN Dishes, Foam PCB
)

AS PivotTable

// output

ProductID | Dishes  | Foam | PCB  //error occurence due to PK.   Change ProductID




       
