using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {

            InitializeComponent();
            manager.MainFrame = MainFrame;
            MainFrame.Navigate(new ToursPage(false));


            //ImportTours();
        }

        private void ImportTours()
        {
            var fileData = File.ReadAllLines(@"C:\Users\arbyzerrr\Desktop\import до\Туры.txt");
            var images = Directory.GetFiles(@"C:\Users\arbyzerrr\Desktop\import до\Туры фото");

            foreach (var line in fileData)
            {
                var data = line.Split('\t');

                var tempTour = new Tour_
                {
                    name = data[0].Replace("\"", ""),
                    tickestcount = int.Parse(data[2]),
                    price = decimal.Parse(data[3]),
                    isactual = (data[4] == "0") ? false : true
                };

                foreach (var tourType in data[5].Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries))
                {
                    var currentType = Tour_GOBOEntities.GetContext().Types.ToList().FirstOrDefault(p => p.name == tourType);
                    if (currentType != null)
                        tempTour.Types.Add(currentType);
                }
                try
                {
                    tempTour.imagepreview = File.ReadAllBytes(images.FirstOrDefault(p => p.Contains(tempTour.name)));
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

                Tour_GOBOEntities.GetContext().Tour_.Add(tempTour);
                Tour_GOBOEntities.GetContext().SaveChanges();

            }
        }
        private void ButtonBack_Click(object sender, RoutedEventArgs e)
        {
            manager.MainFrame.GoBack();
        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if(MainFrame.CanGoBack)
            {
                ButtonBack.Visibility = Visibility.Visible;
            }
            else
            {
                ButtonBack.Visibility = Visibility.Hidden;
            }
        }

        private void ButtonSingUp_Click(object sender, RoutedEventArgs e)
        {
            LoginWindow login = new LoginWindow();
            login.Show();
        }
    }
}
