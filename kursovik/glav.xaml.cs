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

namespace kursovik
{
    /// <summary>
    /// Логика взаимодействия для glav.xaml
    /// </summary>
    public partial class glav : Window
    {
        private string name, surename;
        public glav()
        {
            InitializeComponent();
        }
        public glav(string Name, string SecondName)
        {
            InitializeComponent();
            name = Name;
            surename = SecondName;
            FIO.Text = name + " " + surename;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            post win1 = new post();
            win1.Show();
            Close();

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            sozdanie_otch win3 = new sozdanie_otch();
            win3.Show();
            Close();
        }
    }
}
