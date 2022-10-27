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

namespace oldskyl
{
    /// <summary>
    /// Логика взаимодействия для HotelPage.xaml
    /// </summary>
    public partial class HotelPage : Page
    {
        public HotelPage(bool isadmin)
        {
            InitializeComponent();
            if (isadmin == true)
            {
                ButtonAdd.Visibility = Visibility.Visible;
                ButtonDelete.Visibility = Visibility.Visible;
            }
            DGridHotels.ItemsSource = Tour_GOBOEntities.GetContext().hotels.ToList();
        }

        private void ButtonEdit_Click(object sender, RoutedEventArgs e)
        {
            manager.MainFrame.Navigate(new AddEditPage((sender as Button).DataContext as hotel));
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            manager.MainFrame.Navigate(new AddEditPage(null));
        }

        private void ButtonDelete_Click(object sender, RoutedEventArgs e)
        {
            var hotelsForRemoving = DGridHotels.SelectedItems.Cast<hotel>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить {hotelsForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    Tour_GOBOEntities.GetContext().hotels.RemoveRange(hotelsForRemoving);
                    Tour_GOBOEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    DGridHotels.ItemsSource = Tour_GOBOEntities.GetContext().hotels.ToList();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if(Visibility == Visibility.Visible)
            {
                Tour_GOBOEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridHotels.ItemsSource = Tour_GOBOEntities.GetContext().hotels.ToList();
            }
        }
    }
}
