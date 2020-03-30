using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecetteProject
{
    public partial class CreerRecette : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label2.Text = "En Ligne :" + Application["TotalOnlineUsers"];
                if (Request.Cookies["UserRecetteSite"] != null)
                {
                    HttpCookie cookie = Request.Cookies["UserRecetteSite"];
                    string nom = cookie["UserName"];
                    Label1.Text = "Bonjour " + nom;
                }
                else
                {
                    Label1.Text = "Bonjour " + Session["UserName"];
                }
            }
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            themelbl.Text = DropDownList1.SelectedItem.ToString();
        }

      
    }
}