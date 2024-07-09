using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Navigation;
using System.Windows;
using System.Windows.Controls;
using Repository.Models;
using System.Windows.Media;
using Management.CustomerT;

namespace Management.Home
{
    public partial class HomePage : Page
    {
        public HomePage()
        {
            InitializeComponent();
        }

        private void GoToCustomerPage_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new CustomerT.CustomerT());        }

        private void GoToRoomTypePage_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RoomType.RoomTypeR());

        }

        private void GoToBookingPage_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Booking.BookingB());

        }
    }
}