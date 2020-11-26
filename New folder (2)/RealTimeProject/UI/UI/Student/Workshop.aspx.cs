using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BOL;

public partial class Student_Workshop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetWorkshops();
        }
    }

    private void GetWorkshops()
    {
        WorkshopBusiness WB = new WorkshopBusiness();
        List<tbl_Workshop> Ls = WB.GetWorkshops();
        GridViewWList.DataSource = Ls;
        GridViewWList.DataBind();
    }


    protected void GridViewWList_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*int WorkshopId = int.Parse(GridViewWList.SelectedValue.ToString());
        Response.Redirect("~/Common/Register.aspx?WorkshopId=" + WorkshopId);*/
        Response.Write("Please logout and click on the animation link");
        
    }
}