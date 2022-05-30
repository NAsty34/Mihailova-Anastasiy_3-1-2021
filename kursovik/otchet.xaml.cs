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
    /// Логика взаимодействия для otchet.xaml
    /// </summary>
    public partial class otchet : Window
    {
        public otchet()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            glav win1 = new glav();
            win1.Show();
            Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            sozdanie_otch win1 = new sozdanie_otch();
            win1.Show();
            Close();
        }
    }
}
