using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;

namespace RecetteProject
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["TotalOnlineUsers"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["TotalOnlineUsers"] = (int)Application["TotalOnlineUsers"] + 1;
            Application.UnLock();

            //
            string text = "Session ouvre " + DateTime.Now.ToString() + " " + Session.SessionID;
            string path = Server.MapPath("~/Sessions/sessionfile.txt");
            LoadMyDataAsync(path, text);
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["TotalOnlineUsers"] = (int)Application["TotalOnlineUsers"] - 1;
            Application.UnLock();

            //
            string text = "Session ferme " + DateTime.Now.ToString() + " " + Session.SessionID;
            string path = System.Web.Hosting.HostingEnvironment.MapPath("~/Sessions/sessionfile.txt");
            LoadMyDataAsync(path, text);
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        static async Task<int> LoadMyDataAsync(string path,string text)
        {
            using(StreamWriter sw = File.AppendText(path))
            {
                sw.WriteLine(text);
                sw.WriteLine("\n");
            }
            return 0;
        }
    }
}