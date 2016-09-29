using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace Eagle.ExternalIntegrationWebApi.Infrastructure
{
	public class AuthBearerAuthorizeAttribute : AuthorizeAttribute
	{
		const string bearerToken = "RjcPJzICwCIVsGPHq4IGZq5Nvw7ZkelKR9GKCiT5wR2mVB29lFpw42v/vwAcQE2l";
		public override void OnAuthorization(System.Web.Http.Controllers.HttpActionContext actionContext)
		{
			if (AuthorizeRequest(actionContext))
			{
				return;
			}
			HandleUnauthorizedRequest(actionContext);
		}

		protected override void HandleUnauthorizedRequest(System.Web.Http.Controllers.HttpActionContext actionContext)
		{
            //Code to handle unauthorized request
            actionContext.Response = new System.Net.Http.HttpResponseMessage(System.Net.HttpStatusCode.Unauthorized);
		}

		private bool AuthorizeRequest(System.Web.Http.Controllers.HttpActionContext actionContext)
		{
			var authHeader = actionContext.Request.Headers.Authorization;
			//Write your code here to perform authorization
			if (authHeader != null)
			{
				if(authHeader.Scheme == "Bearer" && authHeader.Parameter == bearerToken)
				{
					return true;
				}
			}
			return false;
		}

	}

}