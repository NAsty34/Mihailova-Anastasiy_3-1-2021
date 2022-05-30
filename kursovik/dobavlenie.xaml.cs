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
    /// Логика взаимодействия для dobavlenie.xaml
    /// </summary>
    public partial class dobavlenie : Window
    {
        private Medic _currentEmploy = new Medic();
   
        public dobavlenie( Medic selectEm)
        {
            InitializeComponent();
            if (selectEm != null)
            {
                _currentEmploy = selectEm;
            }
            DataContext = _currentEmploy;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            post win1 = new post();
            win1.Show();
            Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            import win1 = new import();
            win1.Show();
            Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (_currentEmploy.Id_medic == 0)
            {
                MedicineEntities1.GetContext().Medics.Add(_currentEmploy);
                // MedicineEntities1.GetContext().Medics.Add(new Medic { Name = Nametb.Text, Amount = Amounttb.Text + Combotb.Text, Form = Formtb.Text, Price = Pricetb.Text, ShelfLife = Shelftb.Text + Shelftb2.Text });
            }
            MedicineEntities1.GetContext().SaveChanges();
            MessageBox.Show("Вы добавили лекартства");
            post win1 = new post();
            win1.Show();
            Close();
        }
    }
}
