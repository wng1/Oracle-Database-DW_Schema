BEGIN TRY

  BEGIN TRANSACTION addData
  
  INSERT INTO tblCustomer (CustomerID, firstName, lastName)
  VALUES ('100', 'Susan', 'Smith')
  
  UPDATE tblCUstomer
  SET lastName = 'Susan'
  WHERE CustomerID = '100'
  
  COMMIT TRANSACTION
END TRY

BEGIN CATCH
ROLLBACK TRANSACTION addData
PRINT 'Adding data to the database has failed'
END CATCH

//Viewing results

SELECT * FROM tblCustomer WHERE CustomerID = 100;

