using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Trainer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string coStr = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";
            
            try 
            {
                string cmdStr = @"select * from tbl_User where RoleId=6";
                SqlConnection con = new SqlConnection(coStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    GridViewTainerList.DataSource = dr;
                    GridViewTainerList.DataBind();
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

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        string TrainerFName = TextBoxTrainerFirstName.Text.ToString();
        string TrainerLName = TextBoxTrainerLastName.Text.ToString();
        string TrainerEmail = TextBoxTrainerEmail.Text.ToString();
        string TextBoxPas = TextBoxPassword.Text.ToString();
        string TrainerGender = RadioButtonListTGender.SelectedValue.ToString();
        string coStr1 = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Workshop;Integrated Security=True";
        if (TextBoxPas.Equals(TextBoxRePassword.Text.ToString())) 
        {
            try
            {
                string cmdStr1 = @"insert into tbl_User (Username_Email,Password,FirstName,LastName,UserGender,isActive,Experience,RoleId) values(@Email,@Pass,@FName,@LName,@gndr,'Yes','NA',6)";
                SqlConnection con1 = new SqlConnection(coStr1);
                SqlCommand cmd1 = new SqlCommand(cmdStr1, con1);
                cmd1.Parameters.AddWithValue("@Email", TrainerEmail);
                cmd1.Parameters.AddWithValue("@FName", TrainerFName);
                cmd1.Parameters.AddWithValue("@LName", TrainerLName);
                cmd1.Parameters.AddWithValue("@Pass", TextBoxPas);
                cmd1.Parameters.AddWithValue("@gndr", TrainerGender);
                con1.Open();
                cmd1.ExecuteNonQuery();
                con1.Close();
                Response.Redirect("~/Admin/Trainer.aspx");
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }
        } 
        else 
        { 
            Response.Write("Password and Re-Password are not equal"); 
            return; 
        }
    }
}