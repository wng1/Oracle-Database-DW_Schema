CREATE PROCEDURE [dbo].[getComponentPriceOfMaterials]

@EntryProductID int,
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
  
  WHERE p.ProdID = @EntryProductID  //cross reference column to the input parameter
  AND @CheckDate >=p.ProductDate //check the above product from a certain date  2016-04-1 00:00:00.000
  UNION ALL
  
  SELECT p.ProdID, p.CID, p.CDescription, pr.CCost, p.PerCQty, pr.ListPrice)
  FROM [CPOM_cte] cte
  INNER JOIN Production.ComponentPriceOfMaterial p
  ON p.ProdID = cte.CID
  WHERE @CheckDate >=p.ProductDate
)
