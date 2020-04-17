using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RecetteProject.DataSet1TableAdapters;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace RecetteProject
{
    public partial class CreerRecette : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FileUpload1.Attributes["onchange"] = "uploadimg(this)";             
            }
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            themelbl.Text = DropDownList1.SelectedItem.ToString();
        }

        protected void btnCreer_Click(object sender, EventArgs e)
        {
            recetteTableAdapter tableAdapter = new recetteTableAdapter();
            QueriesTableAdapter queries = new QueriesTableAdapter();
            DataTable table = tableAdapter.GetData();
            string img = Image1.ImageUrl;
            try
            {
                tableAdapter.Insert(TextBox1.Text, DateTime.Now, RadioButtonList1.SelectedValue, int.Parse(TextBox2.Text), TextBox3.Text, img, int.Parse(DropDownList1.SelectedValue));
            }catch(Exception ex)
            {
                Label4.Visible = true;
                return;
            }
            int recId = (int)queries.getLastRecetteId();
            Response.Redirect("DetailRecette.aspx?code=" + recId  + "&nom=" + TextBox1.Text);
        }

        protected void btnSaveImg_Click(object sender, EventArgs e)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            string[] exts = { ".jpg", ".png", ".jpeg" };
            int i;
            for (i = 0; i < exts.Length; i++)
            {
                if (ext == exts[i])
                    break;
            }
            if(i==exts.Length)
            {
                Label5.Visible = true;
                return;
            }

            string str = "~/Images/Recette/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
            Image1.ImageUrl = str;

        }
    }
}