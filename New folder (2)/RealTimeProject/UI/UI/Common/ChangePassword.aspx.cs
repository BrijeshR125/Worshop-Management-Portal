using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BOL;

public partial class Common_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonSub_Click(object sender, EventArgs e)
    {
        string em = TextBoxemail.Text.ToString();
        string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";
        try 
        {
            string cmdStr = @"select * from tbl_User where Username_Email = @Username_Email";
            SqlConnection con = new SqlConnection(coStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@Username_Email", em);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session.Add("U_ser", em);
                System.Threading.Thread.Sleep(500);
                Response.Write("Redirecting...");
                System.Threading.Thread.Sleep(1000);
                Response.Redirect("~/Common/RecoverPassword.aspx");
            }
            else
            {
                LabelError.Text = "Email is not registerred. Please go back to Login Page and register yourself.";
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}