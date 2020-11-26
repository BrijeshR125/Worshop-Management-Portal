using BOL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MaterialBusiness:BLLBase
    {
        public List<WorkshopMaterial> GetMaterials()
        {
            MaterialDb MD = new MaterialDb();
            return MD.GetMaterials();
        }

        public void CreateMaterials(tbl_Material M)
        {
            MaterialDb MD = new MaterialDb();
            MD.CreateMaterial(M);
        }
    }
}
