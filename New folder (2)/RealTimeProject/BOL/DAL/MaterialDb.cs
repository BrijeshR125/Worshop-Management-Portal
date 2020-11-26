using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BOL;

namespace DAL
{
    public class MaterialDb:DALBase
    {
        public bool CreateMaterial(BOL.tbl_Material M)
        {
            string cmdStr = @"insert into tbl_Material (MaterialPath,WorkshopId) values (@MaterialPath,@WorkshopId)";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@MaterialPath", M.MaterialPath);
            cmd.Parameters.AddWithValue("@WorkshopId", M.WorkshopId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }

        public List<WorkshopMaterial> GetMaterials()
        {
            try
            {
                List<WorkshopMaterial> Ls;
                Ls = new List<WorkshopMaterial>();
                string cmdStr = @"SELECT M.MaterialId,M.MaterialDescription,M.MaterialPath,W.WorkshopTitle FROM tbl_Material M join tbl_Workshop W on M.WorkshopId=W.WorkshopId";
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand(cmdStr, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    WorkshopMaterial Mt = new WorkshopMaterial();
                    Mt.MaterialId = int.Parse(dr["MaterialId"].ToString());
                    Mt.WorkshopTitle = dr["WorkshopTitle"].ToString();
                    Mt.MaterialDescription = dr["MaterialDescription"].ToString();
                    Mt.MaterialPath = dr["MaterialPath"].ToString();
                    Ls.Add(Mt);
                }
                dr.Close();
                con.Close();
                return Ls;
            }
            catch
            {
                throw;
            }
        }
    }
}
