CREATE Procedure    [dbo].[juntoz_RetornarStockSKU]      
    @SKU as varchar(50)       
    as       select    
    P.ALU   AS SKU,      
    cast(STP.StoreNo as int) as StoreNo,   
     ST.StoreName,    cast(STP.OnHandQty as decimal) as OnHandQty,   
     CAST(P.RetailPrice as decimal) as RetailPrice   
     from PRODUCT_STORE AS STP      
      INNER JOIN STORE AS ST ON (ST.StoreNo=STP.StoreNo)       
      INNER JOIN PRODUCT AS P ON (STP.SKU = P.SKU)     
      Where P.ALU = @SKU and STP.OnHandQty>0

