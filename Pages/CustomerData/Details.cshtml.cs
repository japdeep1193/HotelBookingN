using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using HotelBooking.ConnectionClass;
using HotelBooking.Data;

namespace HotelBooking.Pages.CustomerData
{
    public class DetailsModel : PageModel
    {
        private readonly HotelBooking.Data.HotelBookingContext _context;

        public DetailsModel(HotelBooking.Data.HotelBookingContext context)
        {
            _context = context;
        }

        public Customer Customer { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Customer = await _context.Customer.FirstOrDefaultAsync(m => m.id == id);

            if (Customer == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
