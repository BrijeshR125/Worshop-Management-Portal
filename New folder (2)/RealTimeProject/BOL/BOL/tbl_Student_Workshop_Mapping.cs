using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class tbl_Student_Workshop_Mapping
    {
        public int SerialNo { get; set; }
        public int StudentId { get; set; }
        public int WorkshopId { get; set; }
        public bool isApproved { get; set; }
    }
}
