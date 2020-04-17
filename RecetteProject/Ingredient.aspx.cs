using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RecetteProject.DataSet1TableAdapters;

namespace RecetteProject
{
    public partial class Ingredient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                
            }
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            string id = linkButton.ID;
            int view_position = int.Parse(id.Substring(id.Length - 1));

            MultiView1.ActiveViewIndex = view_position;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as ImageButton).OnClientClick = "return confirm('Do you want to delete this row?');";
            }
        }
    }
}