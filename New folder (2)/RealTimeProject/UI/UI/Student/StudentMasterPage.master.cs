﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                if (Session["RoleId"].ToString() != "7")
                {
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    lblStudent.Text = "Welcome, " + Session["Username_Email"].ToString();
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
