using Repository.Models;
using Repository.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Management.RoomInformationR
{
    /// <summary>
    /// Interaction logic for RoomInfor.xaml
    /// </summary>
    public partial class RoomInfor : Page

    {
        private readonly RoomInformationService roomInformationService;
        private readonly RoomTypeService roomTypeService;
        public RoomInfor()
        {
            InitializeComponent();
            roomInformationService = new RoomInformationService();
            roomTypeService = new RoomTypeService();
            LoadDataGrid();
            LoadDataRoomType();
        }
        private void LoadDataGrid()
        {
            RoomDataGrid.ItemsSource = roomInformationService.GetAll();
        }

        private void LoadDataRoomType()
        {
            var roomType = roomTypeService.GetAll();


            RoomTypeComboBox.ItemsSource = roomType;
            RoomTypeComboBox.DisplayMemberPath = "RoomTypeName";
            RoomTypeComboBox.SelectedValuePath = "RoomTypeId";
         
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var newRoom = GetRoomFromForm();
                roomInformationService.Add(newRoom);
                LoadDataGrid();
                ClearForm();
                MessageBox.Show("Room added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error adding room: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void ClearForm()
        {
            RoomNumberTextBox.Text = string.Empty;
            RoomDescriptionTextBox.Text = string.Empty;
            RoomMaxCapacityTextBox.Text = string.Empty;
            RoomStatusCheckBox.IsChecked = false;
            RoomPricePerDateTextBox.Text = string.Empty;
            RoomTypeComboBox.SelectedIndex = -1;
        }

        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            if (RoomDataGrid.SelectedItem is RoomInformation selectedRoom)
            {
                try
                {
                    var updatedRoom = GetRoomFromForm();
                    updatedRoom.RoomId = selectedRoom.RoomId;
                    roomInformationService.Update(updatedRoom);
                    LoadDataGrid();
                    ClearForm();
                    MessageBox.Show("Room updated successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error updating room: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Please select a room to update.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }

        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (RoomDataGrid.SelectedItem is RoomInformation selectedRoom)
            {
                var result = MessageBox.Show("Are you sure you want to delete this room?", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    try
                    {
                        roomInformationService.Delete(selectedRoom);
                        LoadDataGrid();
                        ClearForm();
                        MessageBox.Show("Room deleted successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"Error deleting room: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a room to delete.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
        private RoomInformation GetRoomFromForm()
        {
            return new RoomInformation
            {
                RoomNumber = RoomNumberTextBox.Text,
                RoomDescription = RoomDescriptionTextBox.Text,
                RoomMaxCapacity = int.Parse(RoomMaxCapacityTextBox.Text),
                RoomStatus = RoomStatusCheckBox.IsChecked ?? false,
                RoomPricePerDate = decimal.Parse(RoomPricePerDateTextBox.Text),
                RoomTypeId = ((Repository.Models.RoomType)RoomTypeComboBox.SelectedItem).RoomTypeId
            };
        }

        private void RoomDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (RoomDataGrid.SelectedItem is RoomInformation selectedRoom)
            {
                RoomNumberTextBox.Text = selectedRoom.RoomNumber;
                RoomDescriptionTextBox.Text = selectedRoom.RoomDescription;
                RoomMaxCapacityTextBox.Text = selectedRoom.RoomMaxCapacity.ToString();
                RoomStatusCheckBox.IsChecked = selectedRoom.RoomStatus;
                RoomPricePerDateTextBox.Text = selectedRoom.RoomPricePerDate.ToString();
                RoomTypeComboBox.SelectedValue = selectedRoom.RoomTypeId;
            }
        }

        //gọi ra search tu sv
        private void LoadDataGrid(string searchTerm = null, int? maxCapacity = null)
        {
            RoomDataGrid.ItemsSource = roomInformationService.Search(searchTerm, maxCapacity);
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string searchTerm = SearchTextBox.Text.Trim();
            int? maxCapacity = null;

            if (int.TryParse(MaxCapacityTextBox.Text, out int capacity))
            {
                maxCapacity = capacity;
            }

            LoadDataGrid(searchTerm, maxCapacity);
        }

        private void RoomTypeComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}