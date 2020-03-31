using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RecetteProject.DataSet1TableAdapters;
using System.Data.SqlClient;
using System.Data;

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

        protected void btnCreer_Click(object sender, EventArgs e)
        {
            recetteTableAdapter tableAdapter = new recetteTableAdapter();
            DataTable table = tableAdapter.GetData();
            int count = table.Rows.Count;
            string img = "~/Images/Recette/DefaultRecette.jpg";
            if (FileUpload1.HasFile)
            {
                string str = "~/Images/Recette/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
                img = str;
            }

            tableAdapter.Insert(TextBox1.Text, DateTime.Now, RadioButtonList1.SelectedValue, int.Parse(TextBox2.Text),TextBox3.Text, img, int.Parse(DropDownList1.SelectedValue));
            count++;
            Response.Redirect("DetailRecette.aspx?code=" + count  + "&nom=" + TextBox1.Text);
        }
    }
}