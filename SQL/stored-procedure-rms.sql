-- Ejemplo basico, solo Stock por Almacen donde stock mayor a 0


Create Procedure juntoz_RetornarStockSKU  
@SKU as varchar(50)  
as  
select 
cast(STP.SKU as nvarchar) as sku,
STP.StoreNo,ST.StoreName,STP.OnHandQty,
cast(p.RetailPrice as decimal) as RetailPrice  
from PRODUCT_STORE AS STP  
INNER JOIN STORE AS ST ON (ST.StoreNo=STP.StoreNo)
inner join PRODUCT as p on STP.SKU = p.SKU
Where stp.SKU=@SKU
