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

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
       
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("Ingredient", typeof(string)));
            foreach(GridViewRow row in GridView1.Rows)
            {
                CheckBox checkIng = (CheckBox)row.FindControl("CheckBox1");
                if (checkIng.Checked)
                {
                    table.Rows.Add(((Label)row.FindControl("Label1")).Text);
                }
            }
            GridView2.DataSource = table;
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            QueriesTableAdapter queries = new QueriesTableAdapter();
            ingredients_recetteTableAdapter adapter = new ingredients_recetteTableAdapter();
            int id = int.Parse(Request.QueryString["code"]);
            foreach(GridViewRow row in GridView2.Rows)
            {
                int ingId = (int)queries.getNumIngQuery(row.Cells[1].Text);
                int qtn;
                if (((TextBox)row.FindControl("qntTxt")).Text == null)
                {
                    qtn = 0;
                }
                else
                {
                    qtn = int.Parse(((TextBox)row.FindControl("qntTxt")).Text);
                }
                adapter.Insert(1, ingId, qtn);
            }


        }
    }
}