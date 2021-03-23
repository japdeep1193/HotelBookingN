using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HotelBooking.ConnectionClass
{
    public class Payment
    {

        public int id { get; set; }

        [Display(Name = "Customer ID")]
        public string CustomerID { get; set; }

        [Display(Name = "Amount")]
        public string Amount { get; set; }



        [Display(Name = "Payment Date")]
        public string PaymentDate { get; set; }

    }
}
