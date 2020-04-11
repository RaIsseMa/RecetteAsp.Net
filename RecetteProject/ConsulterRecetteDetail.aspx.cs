using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RecetteProject.DataSet1TableAdapters;
using System.Data;

namespace RecetteProject
{
    public partial class ConsulterRecetteDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                recIngTableAdapter rec = new recIngTableAdapter();
                Repeater1.DataSource = rec.GetData(int.Parse(Request.QueryString["numRec"]));
                Repeater1.DataBind();
                recetteTableAdapter recette = new recetteTableAdapter();
                DataTable dt = recette.GetDataBy(int.Parse(Request.QueryString["numRec"]));
                Label1.Text = dt.Rows[0][1].ToString();
                Label2.Text += " " + dt.Rows[0][3].ToString();
                Label3.Text += " " + Convert.ToDateTime(dt.Rows[0][2]).ToString("MM/dd/yyyy");
                Label4.Text += " " + dt.Rows[0][4].ToString() + " min";
                string imgsrc =  dt.Rows[0][6].ToString();
                Image1.ImageUrl = imgsrc;
                Label7.Text = dt.Rows[0][5].ToString();
            }
        }
    }
}