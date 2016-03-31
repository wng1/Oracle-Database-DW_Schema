CREATE TYPE dbo.OrderTotalsByYear AS TABLE
(
   orderYear INT NOT NULL PRIMARY KEY,
   quantity INT NOT NULL
);

DECLARE @OrderTotalsByYear AS dbo.OrderTotalsByYear;


//table type like this can be used to reduce the amount of code and as a reference to work or perserve a table definition 
