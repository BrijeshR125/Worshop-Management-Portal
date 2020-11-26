using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Student_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";
            
            try
            {
                string cmdStr = @"select * from tbl_User where Username_Email = @Username_Email";
                SqlConnection con = new SqlConnection(coStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                cmd.Parameters.AddWithValue("@Username_Email", Session["Username_Email"].ToString());
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblFirstName.Text = dr["FirstName"].ToString();
                    lblLastName.Text = dr["LastName"].ToString();
                    lblUser.Text = dr["Username_Email"].ToString();
                    LabelGender.Text = dr["UserGender"].ToString();
                    lblMob.Text = dr["Mobile"].ToString();
                    //lblDOB.Text = dr["UserDob"].ToString();
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

    protected void ButtonExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/Home.aspx");
    }

    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        Session.Add("useremail", Session["Username_Email"].ToString());
        Response.Redirect("~/Common/EditDetails.aspx");
    }
}