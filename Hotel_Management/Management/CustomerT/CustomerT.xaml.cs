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
using System.Windows.Shapes;
using Repository.Models;
using Repository.Services;

namespace Management.CustomerT
{

    public partial class CustomerT : Page
    {
        private readonly CustomerService customerService;
     
        public CustomerT()
        {
            InitializeComponent();
            customerService = new CustomerService();
            LoadDataGrid();
        }
        private void LoadDataGrid()
        {
            CustomerDataGrid.ItemsSource = customerService.GetAll();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            // Retrieve data from input fields
            string fullName = FullNameTextBox.Text;
            string telephone = TelephoneTextBox.Text;
            string email = EmailTextBox.Text;
            DateTime? birthdayDateTime = BirthdayDatePicker.SelectedDate;
            int status=0;
            string password = PasswordBox.Password;

            // Validate input
            if (string.IsNullOrWhiteSpace(fullName))
            {
                MessageBox.Show("Please enter a valid full name.");
                return;
            }

            if (string.IsNullOrWhiteSpace(telephone))
            {
                MessageBox.Show("Please enter a valid telephone number.");
                return;
            }

            if (!IsValidEmail(email))
            {
                MessageBox.Show("Please enter a valid email address.");
                return;
            }

            if (!int.TryParse(StatusTextBox.Text.Trim(), out status))
            {
                MessageBox.Show("Please enter a valid integer for the status.");
                return;
            }

            if (string.IsNullOrWhiteSpace(password))
            {
                MessageBox.Show("Please enter a password.");
                return;
            }

            Customer newCustomer = new Customer
            {
                CustomerFullName = fullName,
                Telephone = telephone,
                EmailAddress = email,
                CustomerBirthday = birthdayDateTime.HasValue ? new DateOnly(birthdayDateTime.Value.Year, birthdayDateTime.Value.Month, birthdayDateTime.Value.Day) : (DateOnly?)null,
                CustomerStatus = status,
                 Password = password
            };
            customerService.Add(newCustomer);
            LoadDataGrid();
            ClearFields();
        }

        private void ClearFields()
        {
            FullNameTextBox.Text = "";
            TelephoneTextBox.Text = "";
            EmailTextBox.Text = "";
            BirthdayDatePicker.SelectedDate = null;
            StatusTextBox.Text = "";
            PasswordBox.Password = "";
        }
        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            Customer selectedCustomer = (Customer)CustomerDataGrid.SelectedItem;
            if (selectedCustomer == null)
            {
                MessageBox.Show("Please select a customer to update.");
                return;
            }
            string fullName = FullNameTextBox.Text.Trim();
            string telephone = TelephoneTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            DateTime? birthdayDateTime = BirthdayDatePicker.SelectedDate;
            int status;
            string password = PasswordBox.Password.Trim();
            if (string.IsNullOrWhiteSpace(fullName))
            {
                MessageBox.Show("Please enter a valid full name.");
                return;
            }

            if (string.IsNullOrWhiteSpace(telephone))
            {
                MessageBox.Show("Please enter a valid telephone number.");
                return;
            }

            if (!IsValidEmail(email))
            {
                MessageBox.Show("Please enter a valid email address.");
                return;
            }

            if (!int.TryParse(StatusTextBox.Text.Trim(), out status))
            {
                MessageBox.Show("Please enter a valid integer for the status.");
                return;
            }

            if (string.IsNullOrWhiteSpace(password))
            {
                MessageBox.Show("Please enter a password.");
                return;
            }

            // Update the selected customer's properties
            selectedCustomer.CustomerFullName = fullName;
            selectedCustomer.Telephone = telephone;
            selectedCustomer.EmailAddress = email;
            selectedCustomer.CustomerBirthday = birthdayDateTime.HasValue ? new DateOnly(birthdayDateTime.Value.Year, birthdayDateTime.Value.Month, birthdayDateTime.Value.Day) : (DateOnly?)null;
            selectedCustomer.CustomerStatus = status;
            selectedCustomer.Password = password;


            customerService.Update(selectedCustomer);
            LoadDataGrid();
            ClearFields();
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            Customer selectedCustomer = (Customer)CustomerDataGrid.SelectedItem;
            if (selectedCustomer == null)
            {
                MessageBox.Show("Please select a customer to delete.");
                return;
            }
            MessageBoxResult result = MessageBox.Show($"Are you sure you want to delete the customer '{selectedCustomer.CustomerFullName}'?", "Confirm Deletion", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                try
                {
                    customerService.Delete(selectedCustomer);
                    LoadDataGrid();
                    ClearFields();
                    MessageBox.Show("Customer deleted successfully.");
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error deleting the customer: {ex.Message}");
                }
            }

        }
        private void CustomerDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Customer selectedCustomer = (Customer)CustomerDataGrid.SelectedItem;
        }
        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string searchQuery = SearchBox.Text.Trim();
            var filteredCustomers = customerService.SearchCustomers(searchQuery).ToList();
            CustomerDataGrid.ItemsSource = filteredCustomers;
        }
    }
}
