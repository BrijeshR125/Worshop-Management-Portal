﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BOL;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        tbl_User U = new tbl_User();
        U.Username_Email = txtUsername.Text;
        U.Password = txtPassword.Text;
        UserBusiness UB = new UserBusiness();
        bool flag = UB.ValidateUser(U);
        if(flag == true)
        {
            Session.Add("UserId", U.UserId);
            Session.Add("Username_Email", U.Username_Email);
            Session.Add("RoleId", U.RoleId);

            //Session.Add("User", U);
            //tbl_User Us = (tbl_User)Session["User"];

            if(U.RoleId == 5)
            {
                Response.Redirect("~/Admin/Home.aspx");
            }
            else if(U.RoleId == 7)
            {
                Response.Redirect("~/Student/Home.aspx");
            }
        }
        else
        {
            System.Threading.Thread.Sleep(3000);
            lblMessage.Text = "Username or Password is invalid!";
        }
    }
}