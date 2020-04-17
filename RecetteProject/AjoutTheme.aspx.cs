using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RecetteProject.DataSet1TableAdapters;
using System.Data;
using System.Data.SqlClient;

namespace RecetteProject
{
    public partial class AjoutTheme : System.Web.UI.Page
    {
        themeTableAdapter themeTable = new themeTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

            int code = int.Parse(Page.Request.Params["code"]);

            DataTable dt = themeTable.GetData(code);
            if (dt.Rows.Count != 0)
            {
                Response.Write("cet code existe deja");
                System.Threading.Thread.Sleep(1000);
                Response.Redirect("~/Themes.html");
            }
            try
            {
                themeTable.Insert(code, Page.Request.Params["name"]);
                Response.Write("ajout effectué avec succès");
                System.Threading.Thread.Sleep(1000);
                Response.Redirect("~/Demarer.aspx");
            }
            catch (SqlException ex)
            {
                
                if (ex.Number == 2627)
                {
                    Response.Write("Ce thème existe déjà");
                    System.Threading.Thread.Sleep(1000);
                    Response.Redirect("~/Themes.html");
                }
                else
                {
                    Response.Write(ex.Number);
                    System.Threading.Thread.Sleep(1000);
                    Response.Redirect("~/Themes.html");
                }
            }
        }
    }
}