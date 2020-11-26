﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using BLL;
using BOL;

public partial class Admin_Approval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GetWorkshopRequest();
        }
    }

    private void GetWorkshopRequest()
    {
        WorkshopBusiness WB = new WorkshopBusiness();
        List<WorkshopRequest> Ls = WB.GetWorkshopRequest();
        GridViewApprove.DataSource = Ls;
        GridViewApprove.DataBind();
    }

    protected void butnSubmit_Click(object sender, EventArgs e)
    {
        int sid = int.Parse(GridViewApprove.DataKeys[GridViewApprove.SelectedIndex].Values["UserId"].ToString());
        int wid = int.Parse(GridViewApprove.DataKeys[GridViewApprove.SelectedIndex].Values["WorkshopId"].ToString());
        bool isAppOrRej = bool.Parse(RadioButtonListAppOrRej.SelectedValue.ToString());
        tbl_Student_Workshop_Mapping swp = new tbl_Student_Workshop_Mapping();
        swp.StudentId = sid;
        swp.WorkshopId = wid;
        swp.isApproved = isAppOrRej;

        WorkshopBusiness WB = new WorkshopBusiness();
        WB.AppOrRejWorkshopRequest(swp);
        GetWorkshopRequest();

        string email = GridViewApprove.SelectedRow.Cells[2].Text;
        Response.Write(email);
        if (email!=null)
        {
            bool ar = bool.Parse(RadioButtonListAppOrRej.SelectedValue.ToString());
            if (ar == true)
            {
                setPassword(email);
            }
            else
            {
                sendDenial(email);
            }
        }
        else
        {
            Response.Write("Error in getting Email");
        }
        Response.Redirect("~/Admin/Approval.aspx");
    }

    private int RandomNumber(int min, int max)
    {
        Random rn = new Random();
        return rn.Next(min, max);
    }

    private string RandomString(int length)
    {
        StringBuilder sb = new StringBuilder();
        Random rd = new Random();
        char value;
        for (int i = 0; i < length; i++)
        {
            value = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * rd.NextDouble() + 65)));
            sb.Append(value);
        }
        return sb.ToString();
    }

    public void setPassword(string email)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(RandomNumber(10, 199));
        sb.Append(RandomString(8));
        string newPass = sb.ToString();
        Response.Write(newPass);
        string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";
        try
        {
            string cmdStr = @"update tbl_User set Password = @Password where Username_Email = @email";
            SqlConnection con = new SqlConnection(coStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@Password", newPass);
            cmd.Parameters.AddWithValue("@email", email); 
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MailMessage msg = new MailMessage();
            MailAddress fromAddress = new MailAddress("bvishwakarma490@rku.ac.in");
            msg.From = fromAddress;
            msg.To.Add(email);
            msg.Body = "Hey Dear,<br/>You have been approved for upcomming workshop. Your details are as below:<br/>Username/Email ID:" + email + "<br/>Password:" + newPass;
            msg.IsBodyHtml = true;
            msg.Subject = "Congratulations!!! You have been approved for the workshop";
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "localhost";
            smtpClient.Send(msg);
            Response.Write("Email with password sent.");
            //Response.Redirect("~/Admin/Approval.aspx");*/
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

        return;
    }

    public void sendDenial(string email)
    {
        MailMessage msg = new MailMessage();
        MailAddress fromAddress = new MailAddress("bvishwakarma490@rku.ac.in");
        msg.From = fromAddress;
        msg.To.Add(email);
        msg.Body = "Hey Dear,<br/>You have been rejected for upcomming workshop.";
        msg.IsBodyHtml = true;
        msg.Subject = "Sorry!!! You have been rejected for the workshop";
        SmtpClient smtpClient = new SmtpClient();
        smtpClient.Host = "localhost";
        smtpClient.Send(msg);
        return;
    }
}