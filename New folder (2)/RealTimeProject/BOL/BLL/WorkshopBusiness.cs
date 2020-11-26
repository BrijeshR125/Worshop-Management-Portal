using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BOL;
using DAL;
namespace BLL
{
    public class WorkshopBusiness:BLLBase
    {
        WorkshopDb WD;
        public WorkshopBusiness()
        {
            WD = new WorkshopDb();
        }

        public List<WorkshopRequest> GetWorkshopRequest()
        {
            return WD.GetWorkshopRequest();
        }

        public bool AppOrRejWorkshopRequest(tbl_Student_Workshop_Mapping swp)
        {
            return WD.AppOrRejWorkshopRequest(swp);
        }
        public bool InsertWorkshop(tbl_Workshop Wp, List<int> Ls)
        {
            //Workshop date should be greater than current date
            if (Wp.WorkshopDate > DateTime.Now)
            {
                WD.InsertWorkshop(Wp, Ls);
                return true;
            }
            else 
            {
                return false;
            }
        }

        public List<tbl_Workshop> GetWorkshops()
        {
            return WD.GetWorkshops();
        }

        public tbl_Workshop GetWorkshopById(int WorkshopId)
        {
            tbl_Workshop Wp = WD.GetWorkshopById(WorkshopId);
            return Wp;
        }

        public bool UpdateWorkshopById(tbl_Workshop Wp, int WorkshopId)
        {
            if(Wp.WorkshopDate > DateTime.Now)
            {
                WD.UpdateWorkshopById(Wp, WorkshopId);
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool DeleteWorkshopById(int WorkshopId)
        {
            WD.DeleteWorkshopById(WorkshopId);
            return true;
        }

        public bool AssignTrainersToWorkshop(List<tbl_Trainer_Workshop_Mapping> Ls)
        {
            WD.AssignTrainersToWorkshop(Ls);
            return true;
        }
    }
}
