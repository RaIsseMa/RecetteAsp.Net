﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecetteProject
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserRecetteSite"] != null)
                {
                    HttpCookie cookie = Request.Cookies["UserRecetteSite"];
                    string nom = cookie["UserName"];
                    Label1.Text = "En Ligne :" + Application["TotalOnlineUsers"] + "/" + "Bonjour " + nom;
                }
                else
                {
                    Label1.Text = "En Ligne :" + Application["TotalOnlineUsers"] + "/" + "Bonjour " + Session["UserName"];
                }
            }
        }
    }
}