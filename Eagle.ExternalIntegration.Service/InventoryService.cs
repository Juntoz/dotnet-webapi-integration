using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Eagle.ExternalIntegration.Service.DataTransferObjects;

namespace Eagle.ExternalIntegration.Service
{
	public class InventoryService
	{
		public ProductStockDTO GetInventoryBySku(string sku, IEnumerable<int> warehouseIdentifiersFilter = null)
		{
			// todo: amarrar a entity framework y ejecutar sp o linq
			DataModel.RMSContext ctx = new DataModel.RMSContext();
			SqlParameter skuParam = new SqlParameter("@SKU", sku);
			// todo: poner info correcta
			var result = ctx.Database.SqlQuery<RmsStokDto>("juntoz_RetornarStockSKU @SKU", skuParam).ToList();

			if(result.Count == 0)
			{
				return null;
			}
			
			// placeholder
			return new ProductStockDTO()
			{
				Price = result.FirstOrDefault().RetailPrice,
				SKU = sku,
				TotalQuantity = (int)result.Sum(x=> x.OnHandQty),
				StockByWarehouse = from w in result
                                   select new WarehouseStockDTO
                                   {
                                       Name = w.StoreName,
                                       Quantity = (int)w.OnHandQty,
                                       WarehouseIdentifier = w.StoreNo.ToString()
                                   }
			};
		}

	}
}
