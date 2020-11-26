﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["UserId"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                if(Session["RoleId"].ToString() != "5")
                {
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    lblUser.Text = "Welcome, " + Session["Username_Email"].ToString();
                }
            }
        }
    }

    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}
