using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eagle.ExternalIntegration.Service
{
	public class ProductStockDTO
	{
		public string SKU { get; set; }
		public decimal Price { get; set; }

		public int TotalQuantity { get; set; }

		public IEnumerable<WarehouseStockDTO> StockByWarehouse { get; set; }
	}

	public class WarehouseStockDTO
	{
		public string WarehouseIdentifier { get; set; }
		public string Name { get; set; }
		public int Quantity { get; set; }
	}
}