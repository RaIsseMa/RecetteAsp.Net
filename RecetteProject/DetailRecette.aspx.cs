using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using RecetteProject.DataSet1TableAdapters;
namespace RecetteProject
{
    public partial class DetailRecette : System.Web.UI.Page
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

                nomRecettelb.Text = Request.QueryString["nom"];
            }
        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("Ingredient", typeof(string)));
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox checkIng = (CheckBox)row.FindControl("CheckBox1");
                if (checkIng.Checked)
                {
                    table.Rows.Add(((Label)row.FindControl("Label1")).Text);
                }
            }
            if (table.Rows.Count == 0)
                return;
            ImageButton2.Visible = true;
            GridView2.DataSource = table;
            GridView2.DataBind();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            QueriesTableAdapter queries = new QueriesTableAdapter();
            ingredients_recetteTableAdapter adapter = new ingredients_recetteTableAdapter();
            int id = int.Parse(Request.QueryString["code"]);
            foreach (GridViewRow row in GridView2.Rows)
            {
                //getNumIngQuery query in the DataSet return the number of ingredient count on name of ingredient
                int ingId = (int)queries.getNumIngQuery(row.Cells[1].Text);
                int qtn = 0;
                try
                {
                    qtn = int.Parse(((TextBox)row.FindControl("qntTxt")).Text);
                }
                catch (FormatException ex)
                {
                    errorlbl.Visible = true;
                    return;
                }

                adapter.Insert(id, ingId, qtn);
            }

            Response.Redirect("~/CreerRecette.aspx");
        }
    }
}