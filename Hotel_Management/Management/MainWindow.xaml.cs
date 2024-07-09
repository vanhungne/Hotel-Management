using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Controls;
using Repository.Models;

namespace Management
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            NavigateToLogin();
        }
        private void NavigateToLogin()
        {
            MainMenu.Visibility = Visibility.Collapsed;
            MainFrame.Navigate(new Login.LoginPage(this));
        }

        public void NavigateToHome()
        {
            MainMenu.Visibility = Visibility.Visible;
            MainFrame.Navigate(new Home.HomePage());
        }


        public void NavigateToCustomer()
        {
            MainMenu.Visibility = Visibility.Visible;
            MainFrame.Navigate(new CustomerT.CustomerT());
        }

        public void NavigateToRoomType()
        {
            MainMenu.Visibility = Visibility.Visible;
            MainFrame.Navigate(new RoomType.RoomTypeR());
        }

        public void NavigateToBooking()
        {
            MainMenu.Visibility = Visibility.Visible;
            MainFrame.Navigate(new Booking.BookingB());
        }


        private void HomeMenuItem_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new Home.HomePage());
        }

        private void LogoutMenuItem_Click(object sender, RoutedEventArgs e)
        {
            NavigateToLogin();
        }
    }
}