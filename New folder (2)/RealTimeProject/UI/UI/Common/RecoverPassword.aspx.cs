using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Common_RecoverPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            Label3.Text = "Welcome, " + Session["U_ser"].ToString();
        }
    }

    protected void ButtonGo_Click(object sender, EventArgs e)
    {
        string pass1 = TextBoxNewPassword.Text.ToString();
        string pass2 = TextBoxNewRePassword.Text.ToString();

        if(pass1.Equals(pass2))
        {
            string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";
            try
            {
                string cmdStr = @"update tbl_User set Password = @Password where Username_Email = @Username_Email";
                SqlConnection con = new SqlConnection(coStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                cmd.Parameters.AddWithValue("@Password", pass2);
                cmd.Parameters.AddWithValue("@Username_Email", Session["U_ser"].ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                System.Threading.Thread.Sleep(2000);
                Response.Write("Password updated sucessfully");
                System.Threading.Thread.Sleep(1000);
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Label4.Text = "Both fileds are not equal.";
        }
    }
}