USE databaseTwo
GO 
SELECT FirstName, LastName, DeliveryStatus, "Note" =
CASE
WHEN DeliveryInstruction IS NULL THEN 'To be delivered anytime, no request'
ELSE DeliveryInstruction
END
FROM DeliverySchedule
