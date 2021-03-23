using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using HotelBooking.ConnectionClass;

namespace HotelBooking.Data
{
    public class HotelBookingContext : DbContext
    {
        public HotelBookingContext (DbContextOptions<HotelBookingContext> options)
            : base(options)
        {
        }

        public DbSet<HotelBooking.ConnectionClass.Customer> Customer { get; set; }

        public DbSet<HotelBooking.ConnectionClass.Payment> Payment { get; set; }

        public DbSet<HotelBooking.ConnectionClass.Rooms> Rooms { get; set; }
    }
}
