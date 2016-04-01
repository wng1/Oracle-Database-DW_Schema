USE databaseONE;
GO

CREATE FUNCTION dbo.getContactDetails
(
@EntityID int
)
RETURN @ContactInfo TABLE   //Table Variable
(
EntityID INT NOT NULL,
FirstName NVARCHAR(30) NULL,
LastName NVARCHAR(30) NULL,
ContactType NVARCHAR(30) NULL
PRIMARY KEY CLUSTERED(EntityID ASC))

AS
BEGIN

DECLARE
