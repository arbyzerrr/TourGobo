using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace oldskyl
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        Tour_GOBOEntities db = new Tour_GOBOEntities();
        private User _users = new User();
        User authuser = null;
        User adminunser = null;
        private string TypeUser;

        public static int TypeID { get; set; }

        public LoginWindow()
        {
            InitializeComponent();
            DataContext = _users;
            HotelsPage = new HotelPage(false);
        }
        HotelPage HotelsPage = null;

        private void ButtonEnter_Click(object sender, RoutedEventArgs e)
        {
            var authuser = db.Users.FirstOrDefault(x => x.login == textBox_login.Text && x.password == passwordBox_password.Password);
            var adminuser = db.Users.FirstOrDefault(x => x.login == textBox_login.Text && x.type_user == "admin");
            if (authuser != null)
            {
                if (adminuser != null)
                {
                    manager.MainFrame.Navigate(new ToursPage(true));
                    admin.isadmin = true;
                }
                else
                {
                    MessageBox.Show("Вы вошли как рофлорыба");
                    manager.MainFrame.Navigate(new ToursPage(false));
                    admin.isadmin = false;
                }
            }
            else
            {
                MessageBox.Show("Ошибка!!!\nВведите данные");
            }


        }
        private void LoginWindow_Closed(object sender, EventArgs e)
        {

        }
    }
}
