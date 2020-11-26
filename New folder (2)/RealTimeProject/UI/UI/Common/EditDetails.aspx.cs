using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Common_EditDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";

            try
            {
                string cmdStr = @"select * from tbl_User where Username_Email = @Username_Email";
                SqlConnection con = new SqlConnection(coStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                cmd.Parameters.AddWithValue("@Username_Email", Session["useremail"].ToString());
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtFirstName.Text = dr["FirstName"].ToString();
                    txtLastName.Text = dr["LastName"].ToString();
                    lblUser.Text = dr["Username_Email"].ToString();
                    LabelGender.Text = dr["UserGender"].ToString();
                    txtMob.Text = dr["Mobile"].ToString();
                    //txtDOB.Text = dr["UserDob"].ToString();
                }
                dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString()); ;
            }
        }
    }

    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";

        try
        {
            string cmdStr = @"update tbl_User set FirstName=@FirstName,LastName=@LastName,Mobile=@Mobile where Username_Email=@Username_Email";
            SqlConnection con = new SqlConnection(coStr);
            SqlCommand cmd = new SqlCommand(cmdStr,con);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.ToString());
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.ToString());
            cmd.Parameters.AddWithValue("@Mobile", txtMob.Text.ToString());
            //cmd.Parameters.AddWithValue("@DOB", txtDOB.ToString());
            cmd.Parameters.AddWithValue("@Username_Email", lblUser.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Record has been updated successfully!");
            System.Threading.Thread.Sleep(1000);
            Response.Redirect("~/Student/Profile.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}