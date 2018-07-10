using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AeC.ConsultorAutonomo.UI.Startup))]
namespace AeC.ConsultorAutonomo.UI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
