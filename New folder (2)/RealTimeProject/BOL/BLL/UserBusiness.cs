using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BOL;
using DAL;

namespace BLL
{
    public class UserBusiness:BLLBase
    {
        public List<tbl_User> GetTrainers()
        {
            try
            {
                UserDb UD = new UserDb();
                List<tbl_User> Ls = UD.GetTrainers();
                return Ls;
            }
            catch
            {
                throw;
            }
        }

        public bool CreateUserRequest(tbl_User u, int workshopId)
        {
            UserDb UD = new UserDb();
            UD.CreateUserRequest(u, workshopId);
            return true;
        }

        public bool ValidateUser(tbl_User U)
        {
            UserDb UD = new UserDb();
            return UD.ValidateUser(U);
        }
    }
}
