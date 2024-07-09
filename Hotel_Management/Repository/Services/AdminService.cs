using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Services
{
    public class AdminService
    {
        private readonly IConfiguration _configuration;

        public AdminService(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public bool ValidateAdminCredentials(string username, string password)
        {
            var adminUsername = _configuration["AdminAccount:Username"];
            var adminPassword = _configuration["AdminAccount:Password"];
            return adminUsername == username && adminPassword == password;
        }
    }
}
