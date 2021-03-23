using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HotelBooking.ConnectionClass
{
    public class tblCustomer
    {
        public int id { get; set; }

        [Display(Name = "Name")]
        public string Name { get; set; }

        [Display(Name = "Contact")]
        public string Contact { get; set; }

        [Display(Name = "Address")]
        public string Address { get; set; }

        [Display(Name = "RoomNo")]
        public string RoomNo { get; set; }

        [Display(Name = "Booking Date")]
        public string CurrtDate { get; set; }

    }
}
