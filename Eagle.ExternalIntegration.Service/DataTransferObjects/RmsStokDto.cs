using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eagle.ExternalIntegration.Service.DataTransferObjects
{
    public class RmsStokDto
    {
        public int SKU { get; set; }
        public int StoreNo { get; set; }
        public string StoreName { get; set; }
        public decimal OnHandQty { get; set; }
		public decimal RetailPrice { get; set; }
	}
}
