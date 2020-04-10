using System;
using System.Collections.Generic;
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
            if(!IsPostBack)
                MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            //ingredientTableAdapter ingredient = new ingredientTableAdapter();
            //Response.Write(((TextBox)FormView1.FindControl("NomTextBox")).Text+"/"+ System.Convert.ToDecimal(((TextBox)FormView1.FindControl("Prix_UnitaireTextBox")).Text)+"/"+ ((TextBox)FormView1.FindControl("NomTextBox")).Text);
            ////ingredient.Insert(((TextBox)FormView1.FindControl("NomTextBox")).Text, System.Convert.ToDecimal(((TextBox)FormView1.FindControl("Prix_UnitaireTextBox")).Text), ((TextBox)FormView1.FindControl("NomTextBox")).Text);
            Response.Write("gg");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;

        }
    }
}