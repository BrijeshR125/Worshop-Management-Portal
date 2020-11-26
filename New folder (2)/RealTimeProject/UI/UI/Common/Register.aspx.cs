using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL;
using BLL;

public partial class Common_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int WorkshopId = Int16.Parse(HttpContext.Current.Request.QueryString["WorkshopId"].ToString());
        string email = txtEmail.Text;
        tbl_User U = new tbl_User();
        U.Username_Email = email;
        U.FirstName = TextBoxFirstName.Text.ToString();
        U.LastName = TextBoxLastName.Text.ToString();
        U.Mobile = TextBoxNumber.Text.ToString();
        //U.UserDob = DateTime.Parse(TextBoxDoB.ToString());
        U.UserGender = RadioButtonList1.SelectedValue.ToString();
        UserBusiness UB = new UserBusiness();
        if (UB.CreateUserRequest(U, WorkshopId))
        {
            System.Threading.Thread.Sleep(2000);
            Response.Write("Request submitted successfully. Go back to Login Screen click on 'Forgot Password' to set your password.");
            //Response.Write("<script>alert('Request submitted successfully. Go back to Login Screen click on 'Forgot Password' to set your password.');</script>");
            System.Threading.Thread.Sleep(5000);
            Response.Redirect("~/Default.aspx");
        }
    }
}