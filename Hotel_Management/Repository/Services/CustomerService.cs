using Repository.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Services;

public class CustomerService : GenericRepository<Customer>
{
    public IEnumerable<Customer> SearchCustomers(string searchQuery)
    {
        if (string.IsNullOrWhiteSpace(searchQuery))
        {
            return GetAll(); // Trả về tất cả khách hàng nếu query rỗng
        }

        searchQuery = searchQuery.Trim().ToLower();

        return GetAll().Where(c =>
            c.CustomerFullName.ToLower().Contains(searchQuery) ||
            (c.Telephone != null && c.Telephone.ToLower().Contains(searchQuery)) ||
            c.EmailAddress.ToLower().Contains(searchQuery)
        );
    }

}
