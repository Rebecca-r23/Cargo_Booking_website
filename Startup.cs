using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CourierN.Startup))]
namespace CourierN
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
