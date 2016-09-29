using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eagle.ExternalIntegration.Service.DataModel
{
	public class RMSContext : DbContext
	{
		public RMSContext(): base("name=RmsDbConnectionString")
		{
			// do not init the DB
			Database.SetInitializer<RMSContext>(null);
		}
	}
}
