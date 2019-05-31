using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GSCodingChallenge.Startup))]
namespace GSCodingChallenge
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
