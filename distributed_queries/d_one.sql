USE distrbutedDB
GO

BEGIN DISTRIBUTED TRANSACTION

DELETE distributedDB.User.Customer
WHERE CustomerID = 100;

DELETE remote.distributedDB.User.Customer
WHERE CustomerID = 200;

COMMIT TRANSACTION;
GO
