using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using HotelBooking.ConnectionClass;
using HotelBooking.Data;

namespace HotelBooking.Pages.RoomDetails
{
    public class DeleteModel : PageModel
    {
        private readonly HotelBooking.Data.HotelBookingContext _context;

        public DeleteModel(HotelBooking.Data.HotelBookingContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Rooms Rooms { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Rooms = await _context.Rooms.FirstOrDefaultAsync(m => m.id == id);

            if (Rooms == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Rooms = await _context.Rooms.FindAsync(id);

            if (Rooms != null)
            {
                _context.Rooms.Remove(Rooms);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
