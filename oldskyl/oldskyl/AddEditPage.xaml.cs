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
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        private hotel _currentHotel = new hotel();
        public AddEditPage(hotel selectedHotel)
        {
            InitializeComponent();

            if(selectedHotel != null)
                _currentHotel = selectedHotel;

            DataContext = _currentHotel;
            ComboCountries.ItemsSource = Tour_GOBOEntities.GetContext().Countries.ToList();
        }

        private void ButtonSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentHotel.name))
                errors.AppendLine("Введите название отеля");
            if (_currentHotel.countofstars < 1 || _currentHotel.countofstars > 5)
                errors.AppendLine("Количество звёзд - от 1 до 5");
            if (_currentHotel.Country == null)
                errors.AppendLine("Выберите страну");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }    

            if(_currentHotel.id == 0)
                Tour_GOBOEntities.GetContext().hotels.Add(_currentHotel);

            try
            {
                Tour_GOBOEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

        }
    }
}
