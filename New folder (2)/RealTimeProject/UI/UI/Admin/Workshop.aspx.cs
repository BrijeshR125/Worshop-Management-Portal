using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL;
using BLL;

public partial class Admin_Workshop : System.Web.UI.Page
{
    #region Events
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                GetWorkshops();
                GetTrainers();
            }
        }
        catch(Exception E)
        {
            Response.Write(E.Message + "Kindly contact Admin at 00-000-000000");
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        tbl_Workshop Wp = new tbl_Workshop();
        Wp.WorkshopTitle = txtWorkshopTitle.Text;
        Wp.WorkshopDate = DateTime.Parse(txtWorkshopDate.Text);
        Wp.WorkshopTopics = txtWorkshopTopics.Text;
        Wp.WorkshopDuration = txtWorkshopDuration.Text;

        List<int> Ls = new List<int>();
        foreach (ListItem item in CheckBoxListTrainers.Items)
        {
            int TrainerId;
            if (item.Selected)
            {
                TrainerId = int.Parse(item.Value);
                Ls.Add(TrainerId);
            }
        }
        WorkshopBusiness WB = new WorkshopBusiness();
        WB.InsertWorkshop(Wp, Ls);
        GetWorkshops();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = int.Parse(GridView1.SelectedValue.ToString());
        WorkshopBusiness WB = new WorkshopBusiness();
        tbl_Workshop Wp = WB.GetWorkshopById(id);
        txtWorkshopTitle.Text = Wp.WorkshopTitle;
        txtWorkshopDate.Text = Wp.WorkshopDate.ToString();
        txtWorkshopDuration.Text = Wp.WorkshopDuration;
        txtWorkshopTopics.Text = Wp.WorkshopTopics;
        CheckBoxListTrainers.ClearSelection();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        tbl_Workshop Wp = new tbl_Workshop();
        Wp.WorkshopTitle = txtWorkshopTitle.Text;
        Wp.WorkshopDate = DateTime.Parse(txtWorkshopDate.Text);
        Wp.WorkshopTopics = txtWorkshopTopics.Text;
        Wp.WorkshopDuration = txtWorkshopDuration.Text;

        WorkshopBusiness WB = new WorkshopBusiness();
        int id = int.Parse(GridView1.SelectedValue.ToString());
        
        WB.UpdateWorkshopById(Wp, id);
        
        GetWorkshops();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        WorkshopBusiness WB = new WorkshopBusiness();
        int id = int.Parse(GridView1.SelectedValue.ToString());
        WB.DeleteWorkshopById(id);
        GetWorkshops();
    }

    protected void btnAssign_Click(object sender, EventArgs e)
    {
        List<tbl_Trainer_Workshop_Mapping> Ls = new List<tbl_Trainer_Workshop_Mapping>();
        int WorkshopId = int.Parse(GridView1.SelectedValue.ToString());
        foreach (ListItem item in CheckBoxListTrainers.Items)
        {
            if (item.Selected)
            {
                int TrainerId = int.Parse(item.Value);
                tbl_Trainer_Workshop_Mapping twm = new tbl_Trainer_Workshop_Mapping() { WorkshopId = WorkshopId, TrainerId = TrainerId };
                Ls.Add(twm);
            }
        }

        if (Ls.Count() > 0)
        {
            WorkshopBusiness WB = new WorkshopBusiness();
            WB.AssignTrainersToWorkshop(Ls);
        }
    } 
    #endregion

    #region PrivateMethods
    private void GetTrainers()
    {
        UserBusiness UB = new UserBusiness();
        List<tbl_User> Ls = UB.GetTrainers();

        CheckBoxListTrainers.DataSource = Ls;
        CheckBoxListTrainers.DataTextField = "FirstName";
        CheckBoxListTrainers.DataValueField = "UserId";
        CheckBoxListTrainers.DataBind();
    }

    private void GetWorkshops()
    {
        WorkshopBusiness WB = new WorkshopBusiness();
        List<tbl_Workshop> Ls = WB.GetWorkshops();
        GridView1.DataSource = Ls;
        GridView1.DataBind();
    } 
    #endregion
}