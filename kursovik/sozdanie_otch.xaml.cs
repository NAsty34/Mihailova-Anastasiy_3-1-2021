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
    /// Логика взаимодействия для sozdanie_otch.xaml
    /// </summary>
    public partial class sozdanie_otch : Window
    {
        public sozdanie_otch()
        {
            InitializeComponent();
            DGRID.ItemsSource = MedicineEntities1.GetContext().Medics.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            glav win1 = new glav();
            win1.Show();
            Close();
        }
    }
}
