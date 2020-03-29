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
            //code haytsard b HTTP Protocols b method post m html page
            //bax twsal n xi variable sardtih b post method kat3ml Page.Request.Params[name dyalu li 3amlo f html]

            int code = int.Parse(Page.Request.Params["code"]);
            //nxofo wax kayn had code deja f tabase awla lae
            DataTable dt = themeTable.GetData(code);
            if (dt.Rows.Count != 0)
            {
                Response.Write("cet code existe deja");
                return;
            }
            //try catch bax ida kan kayn nom kayn deja mansjluhxi
            try
            {
                themeTable.Insert(code, Page.Request.Params["name"]);
                Response.Write("ajout effectué avec succès");

            }
            catch (SqlException ex)
            {
                
                if (ex.Number == 2627)
                {
                    Response.Write("Ce thème existe déjà");

                }
                else
                {
                    Response.Write(ex.Number);
                }
            }
        }
    }
}