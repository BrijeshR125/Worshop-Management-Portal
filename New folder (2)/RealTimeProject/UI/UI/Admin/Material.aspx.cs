using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL;
using BLL;
public partial class Admin_Material : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GetWorkshops();
            GetMaterials();
        }

    }
    
    private void GetMaterials()
    {
        MaterialBusiness MB = new MaterialBusiness();
        List<WorkshopMaterial> Ls = MB.GetMaterials();
        GridViewMaterials.DataSource = Ls;
        GridViewMaterials.DataBind();
    }
    
    private void GetWorkshops()
    {
        WorkshopBusiness WB = new WorkshopBusiness();
        List<tbl_Workshop> Ls = WB.GetWorkshops();
        ddWorkshop.DataSource = Ls;
        ddWorkshop.DataValueField = "WorkshopId";
        ddWorkshop.DataTextField = "WorkshopTitle";
        ddWorkshop.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if(MaterialFileUpload.HasFile)
        {
            string path = Server.MapPath("~//Material//");
            MaterialFileUpload.SaveAs(path + MaterialFileUpload.FileName);
            tbl_Material M = new tbl_Material();
            M.WorkshopId = int.Parse(ddWorkshop.SelectedValue);
            M.MaterialPath = "~//Material//" + MaterialFileUpload.FileName;
            MaterialBusiness MB = new MaterialBusiness();
            MB.CreateMaterials(M);
            GetMaterials();
            Response.Redirect("~/Admin/Material.aspx");
        }
    }

    protected void GridViewMaterials_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        /*Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
        Response.TransmitFile(Server.MapPath("~//Download//") + e.CommandArgument);
        Response.End();*/
    }
}