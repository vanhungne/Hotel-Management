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
using Repository.Services;
namespace Management.RoomType
{
    /// <summary>
    /// Interaction logic for RoomTypeR.xaml
    /// </summary>
    public partial class RoomTypeR : Page
    {

        private readonly RoomTypeService roomTypeService;

        public RoomTypeR()
        {
            InitializeComponent();
            roomTypeService = new RoomTypeService();
            LoadDataGrid();
        }

        private void LoadDataGrid()
        {
            RoomTypeDataGrid.ItemsSource = roomTypeService.GetAll();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            string roomTypeName = RoomTypeNameTextBox.Text.Trim();
            string description = DescriptionTextBox.Text.Trim();
            string note = NoteTextBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(roomTypeName))
            {
                MessageBox.Show("Please enter a valid Room Type Name.");
                return;
            }

            Repository.Models.RoomType newRoomType = new Repository.Models.RoomType
            {
                RoomTypeName = roomTypeName,
                TypeDescription = description,
                TypeNote = note
            };

            roomTypeService.Add(newRoomType);
            LoadDataGrid();
            ClearFields();

        }

        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            Repository.Models.RoomType selectedRoomType = (Repository.Models.RoomType)RoomTypeDataGrid.SelectedItem;
            if (selectedRoomType == null)
            {
                MessageBox.Show("Please select a room type to update.");
                return;
            }

            string roomTypeName = RoomTypeNameTextBox.Text.Trim();
            string description = DescriptionTextBox.Text.Trim();
            string note = NoteTextBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(roomTypeName))
            {
                MessageBox.Show("Please enter a valid Room Type Name.");
                return;
            }

            selectedRoomType.RoomTypeName = roomTypeName;
            selectedRoomType.TypeDescription = description;
            selectedRoomType.TypeNote = note;

            roomTypeService.Update(selectedRoomType);
            LoadDataGrid();
            ClearFields();
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            Repository.Models.RoomType selectedRoomType = (Repository.Models.RoomType)RoomTypeDataGrid.SelectedItem;
            if (selectedRoomType == null)
            {
                MessageBox.Show("Please select a room type to delete.");
                return;
            }

            MessageBoxResult result = MessageBox.Show($"Are you sure you want to delete the room type '{selectedRoomType.RoomTypeName}'?", "Confirm Deletion", MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (result == MessageBoxResult.Yes)
            {
                try
                {
                    roomTypeService.Delete(selectedRoomType);
                    LoadDataGrid();
                    ClearFields();
                    MessageBox.Show("Room type deleted successfully.");
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error deleting the room type: {ex.Message}");
                }
            }
        }
        private void RoomTypeDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Repository.Models.RoomType selectedRoomType = (Repository.Models.RoomType)RoomTypeDataGrid.SelectedItem;
            if (selectedRoomType != null)
            {
                RoomTypeNameTextBox.Text = selectedRoomType.RoomTypeName;
                DescriptionTextBox.Text = selectedRoomType.TypeDescription;
                NoteTextBox.Text = selectedRoomType.TypeNote;
            }
        }

        private void ClearFields()
        {
            RoomTypeNameTextBox.Text = "";
            DescriptionTextBox.Text = "";
            NoteTextBox.Text = "";
        }

        private void GoToRoomInfoButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Uri("/RoomInformationR/RoomInfor.xaml", UriKind.Relative));
        }
    }
}