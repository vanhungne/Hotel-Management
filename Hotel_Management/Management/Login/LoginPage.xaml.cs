using System.Windows;
using System.Windows.Controls;
using Microsoft.Extensions.Configuration;
using System.IO;
using Repository.Services;

namespace Management.Login
{
    public partial class LoginPage : Page
    {
        private MainWindow _mainWindow;
        private IConfiguration _configuration;
        private AdminService _adminService;

        public LoginPage(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;
            LoadConfiguration();
            _adminService = new AdminService(_configuration);
        }

        private void LoadConfiguration()
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);

            _configuration = builder.Build();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string enteredUsername = UsernameTextBox.Text;
            string enteredPassword = PasswordBox.Password;

            if (_adminService.ValidateAdminCredentials(enteredUsername, enteredPassword))
            {
                // Đăng nhập thành công
                _mainWindow.NavigateToHome();
            }
            else
            {
                ErrorMessageTextBlock.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ. Vui lòng thử lại.";
            }
        }
    }
}