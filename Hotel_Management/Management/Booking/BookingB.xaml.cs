using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Repository.Models;
using Repository.Services;

namespace Management.Booking
{
    public partial class BookingB : Page
    {
        private readonly BookingService bookingService;
        private readonly CustomerService customerService;
        private readonly RoomInformationService roomInformationService;

        public BookingB()
        {
            InitializeComponent();
            bookingService = new BookingService();
            customerService = new CustomerService();
            roomInformationService = new RoomInformationService();
            LoadDataGrid();
        }


        private void LoadDataGrid()
        {
            var bookings = bookingService.GetAll();
            foreach (var booking in bookings)
            {
                booking.Customer = customerService.GetById(booking.CustomerId);
                booking.Room = roomInformationService.GetById(booking.RoomId);
            }
           BookingDataGrid.ItemsSource = bookings;
        }
      

        private void BookingDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (BookingDataGrid.SelectedItem is Repository.Models.Booking selectedBooking)
            {
                CustomerIdTextBox.Text = selectedBooking.CustomerId.ToString();
                RoomNumberTextBox.Text = selectedBooking.Room.RoomNumber.ToString();
                CheckInDatePicker.SelectedDate = selectedBooking.CheckInDate.ToDateTime(TimeOnly.MinValue);
                CheckOutDatePicker.SelectedDate = selectedBooking.CheckOutDate.ToDateTime(TimeOnly.MinValue);
                TotalPriceTextBox.Text = selectedBooking.TotalPrice.ToString();
                BookingStatusTextBox.Text = selectedBooking.BookingStatus.ToString();
                BookingDatePicker.SelectedDate=selectedBooking.BookingDate;
            }

        }


        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var newBooking = new Repository.Models.Booking
                {
                    CustomerId = int.Parse(CustomerIdTextBox.Text),
                    RoomId = roomInformationService.GetRoomIdByRoomnumber(int.Parse(RoomNumberTextBox.Text)),
                    CheckInDate = CheckInDatePicker.SelectedDate.HasValue
                        ? DateOnly.FromDateTime(CheckInDatePicker.SelectedDate.Value)
                        : DateOnly.FromDateTime(DateTime.Now),
                    CheckOutDate = CheckOutDatePicker.SelectedDate.HasValue
                        ? DateOnly.FromDateTime(CheckOutDatePicker.SelectedDate.Value)
                        : DateOnly.FromDateTime(DateTime.Now),
                    TotalPrice = decimal.Parse(TotalPriceTextBox.Text),
                    BookingStatus = int.Parse(BookingStatusTextBox.Text),
                    BookingDate = DateTime.Now
                };

                bookingService.Add(newBooking);
                LoadDataGrid();
                ClearFields();
                MessageBox.Show("Booking added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error adding booking: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }


        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            if (BookingDataGrid.SelectedItem is Repository.Models.Booking selectedBooking)
            {
                try
                {
                    selectedBooking.CustomerId = int.Parse(CustomerIdTextBox.Text);
                    selectedBooking.RoomId = roomInformationService.GetRoomIdByRoomnumber(int.Parse(RoomNumberTextBox.Text));
                    selectedBooking.CheckInDate = CheckInDatePicker.SelectedDate.HasValue
                         ? DateOnly.FromDateTime(CheckInDatePicker.SelectedDate.Value)
                         : DateOnly.FromDateTime(DateTime.Now);
                    selectedBooking.CheckOutDate = CheckOutDatePicker.SelectedDate.HasValue
                        ? DateOnly.FromDateTime(CheckOutDatePicker.SelectedDate.Value)
                        : DateOnly.FromDateTime(DateTime.Now);
                    selectedBooking.TotalPrice = decimal.Parse(TotalPriceTextBox.Text);
                    selectedBooking.BookingStatus = int.Parse(BookingStatusTextBox.Text);

                    bookingService.Update(selectedBooking);
                    LoadDataGrid();
                    MessageBox.Show("Booking updated successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error updating booking: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Please select a booking to update.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }



        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (BookingDataGrid.SelectedItem is Repository.Models.Booking selectedBooking)
            {
                var result = MessageBox.Show("Are you sure you want to delete this booking?", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    try
                    {
                        bookingService.Delete(selectedBooking);
                        LoadDataGrid();
                        ClearFields();
                        MessageBox.Show("Booking deleted successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"Error deleting booking: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a booking to delete.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void ClearFields()
        {
            CustomerIdTextBox.Clear();
            RoomNumberTextBox.Clear();
            CheckInDatePicker.SelectedDate = null;
            CheckOutDatePicker.SelectedDate = null;
            TotalPriceTextBox.Clear();
            BookingDataGrid.SelectedItem = null;
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string searchTerm = SearchTextBox.Text.Trim();
            if(!String.IsNullOrEmpty(searchTerm))
            {
                //var searchResults = bookingService.SearchBooking(searchTerm);
                var searchResults = bookingService.searchByIdOrNumber(searchTerm);

                foreach (var booking in searchResults)
                {
                    booking.Customer = customerService.GetById(booking.CustomerId);
                    booking.Room = roomInformationService.GetById(booking.RoomId);
                }

                BookingDataGrid.ItemsSource = searchResults;
            }
            else
            {
                LoadDataGrid();
                MessageBox.Show("Please enter a number to search.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
