using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class tbl_Workshop
    {
        public int WorkshopId { get; set; }
        public string WorkshopTitle { get; set; }
        public DateTime WorkshopDate { get; set; }
        public string WorkshopDuration { get; set; }
        public string WorkshopTopics { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}
