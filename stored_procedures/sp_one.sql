CREATE PROCEDURE [dbo].[getComponentPriceOfMaterials]

@PID int,
@CheckDate DATETIME

AS 
BEGIN
  SET NOCOUNT ON;
  
  WITH [CPOM_cte](ProdID, CID, CDescription, CCost, PerCQty, ListPrice)
  AS
  (
  SELECT p.ProdID, p.CID, p.CDescription, pr.CCost, p.PerCQty, pr.ListPrice)
  FROM Production.ComponentPriceOfMaterial p
  INNER JOIN Production.Product pr
  ON p.ProdID = pr.PID
  