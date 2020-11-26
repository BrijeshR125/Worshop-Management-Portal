using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using BOL;
using BLL;
using System.Web.UI.WebControls;

public partial class Student_Material : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetMaterials();
        }
    }

    private void GetMaterials()
    {
        MaterialBusiness MB = new MaterialBusiness();
        List<WorkshopMaterial> Ls = MB.GetMaterials();
        GridViewMList.DataSource = Ls;
        GridViewMList.DataBind();
    }


    protected void GridViewMList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        /*Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
        Response.TransmitFile(Server.MapPath("~/Download/") + e.CommandArgument);
        Response.End();*/
    }
}