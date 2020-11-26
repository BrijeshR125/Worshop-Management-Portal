using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";

            try
            {
                string cmdStr = @"select * from tbl_User where RoleId=7";
                SqlConnection con = new SqlConnection(coStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    GridViewStudentList.DataSource = dr;
                    GridViewStudentList.DataBind();
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
}