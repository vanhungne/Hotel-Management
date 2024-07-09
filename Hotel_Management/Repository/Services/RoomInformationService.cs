using Repository.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Services
{
    public class RoomInformationService : GenericRepository<RoomInformation>
    {

        public List<RoomInformation> Search(String searchTerm,int? maxCapacity = null, int? roomTypeId = null)
        {
            var query = GetAll().AsQueryable();
            if (!string.IsNullOrEmpty(searchTerm))
            {
                query = query.Where(r => r.RoomNumber.Contains(searchTerm, StringComparison.OrdinalIgnoreCase));
            }
            if (maxCapacity.HasValue)
            {
                query=query.Where(r=>r.RoomMaxCapacity >= maxCapacity.Value);
            }
            if (roomTypeId.HasValue)
            {
                query = query.Where(r => r.RoomTypeId == roomTypeId.Value);
            }
            return query.ToList();
        }
        public new List<RoomInformation> GetAll()
        {
            return GetAllIncluding(r => r.RoomType).ToList();
        }
    }
}
