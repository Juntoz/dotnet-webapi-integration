using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace Eagle.ExternalIntegrationWebApi.Controllers
{
	[RoutePrefix("inventory"), Infrastructure.AuthBearerAuthorize()]
    public class InventoryController : ApiController
    {
		[Route("{sku}"), HttpGet]
		public async Task<IHttpActionResult> GetStockBySKU(string sku, string warehouseFilter = null)
		{
			List<int> warehouseIdentifiers = new List<int>();
			if(warehouseFilter != null)
			{
				string[] split = warehouseFilter.Split(',');
				foreach (var item in split)
				{
					warehouseIdentifiers.Add(Convert.ToInt32(item));
				}
			}

			var inventorySvc = new ExternalIntegration.Service.InventoryService();
			var products = inventorySvc.GetInventoryBySku(sku, warehouseIdentifiers);

			return Ok(products);
		}
    }
}
