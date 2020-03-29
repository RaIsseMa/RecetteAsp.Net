using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecetteProject
{
    public partial class Demarer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (checkCookies())
                {
                    if (Request.Cookies["UserRecetteSite"] == null)
                    {
                        saveNom();
                        return;
                    }
                 
                    HttpCookie cookie = Request.Cookies["UserRecetteSite"];
                    string nom = cookie["UserName"];
                    Label1.Text = "Bonjour " + nom;
                    
                    return;
                }

                if (Session["UserName"] == null)
                {
                    saveNom();
                    return;
                }

                Label1.Text = "Bonjour " + Session["UserName"];

            }
        }

        private bool checkCookies()
        {
            if (Request.Browser.Cookies)
            {
                if (Request.QueryString["TestCookies"] == null)
                {
                    HttpCookie cookie = new HttpCookie("testCookies");
                    Response.Cookies.Add(cookie);

                    Response.Redirect("Demarer.aspx?TestCookies=1");

                }
                else
                {
                    if (Request.Cookies["testCookies"] != null)
                        return true;
                }
            }

            return false;
        }

        private void saveNom()
        {
            Label1.Text = "Veuillez vous identifier";
            HyperLink1.Visible = false;
            TextBox1.Visible = true;
            BtnValider.Visible = true;
        }

        protected void BtnValider_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox1.Text))
                return;

            if (checkCookies())
            {
                HttpCookie cookie = new HttpCookie("UserRecetteSite");
                cookie["UserName"] = TextBox1.Text;
                cookie.Expires = DateTime.Now.AddDays(90);
                Response.Cookies.Add(cookie);
                Label1.Text = "Bonjour "+TextBox1.Text;
                HyperLink1.Visible = true;
                TextBox1.Visible = false;
                BtnValider.Visible = false;
                return;
            }
            Label1.Text = "Bonjour " + TextBox1.Text;
            HyperLink1.Visible = true;
            TextBox1.Visible = false;
            BtnValider.Visible = false;
            Session["UserName"] = TextBox1.Text;
        }
    }
}