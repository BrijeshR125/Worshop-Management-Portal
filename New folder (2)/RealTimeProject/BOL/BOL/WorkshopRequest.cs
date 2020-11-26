using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BOL
{
    public class WorkshopRequest
    {
        public int UserId { get; set; }
        public string Username_Email { get; set; }
        public int WorkshopId { get; set; }
        public string WorkshopTitle { get; set; }
        public bool isApproved { get; set; }
    }
}
