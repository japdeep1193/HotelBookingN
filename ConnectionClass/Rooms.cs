using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HotelBooking.ConnectionClass
{
    public class Rooms
    {
        public int id { get; set; }

        [Display(Name = "RoomType")]
        public string RoomType { get; set; }

        [Display(Name = "Fair")]
        public string Fair { get; set; }



        [Display(Name = "Status")]
        public string Status { get; set; }
    }
}
