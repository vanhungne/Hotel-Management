using Repository.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Services
{
    public class BookingService : GenericRepository<Booking>
    {

            public IEnumerable<Booking> SearchBooking(string searchTerm, int? roomId = null, int? customerId = null)
            {
                var query = GetAll().AsQueryable();

                if (!string.IsNullOrEmpty(searchTerm))
                {
                    query = query.Where(b =>
                        b.BookingId.ToString().Contains(searchTerm, StringComparison.OrdinalIgnoreCase) ||
                        b.Customer.CustomerFullName.Contains(searchTerm, StringComparison.OrdinalIgnoreCase) ||
                        b.Room.RoomNumber.Contains(searchTerm, StringComparison.OrdinalIgnoreCase)
                    );
                }

                if (roomId.HasValue)
                {
                    query = query.Where(b => b.RoomId == roomId.Value);
                }

                if (customerId.HasValue)
                {
                    query = query.Where(b => b.CustomerId == customerId.Value);
                }

                return query.ToList();
            }

        public List<Booking> searchByIdOrNumber(String keyword)
        {
            if(int.TryParse(keyword, out int id))
            {
                return _dbSet.Where(b => b.CustomerId.Equals(id)).ToList();
            } else
            {
                return _dbSet.Where(b => b.Room.RoomNumber.Contains(keyword)).ToList();
            }
            
        }
        }
}
