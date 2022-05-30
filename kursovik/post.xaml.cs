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
    /// Логика взаимодействия для farm.xaml
    /// </summary>
    public partial class post : Window
    {
        public post()
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

     

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var rec = DGRID.SelectedItems.Cast<Medic>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие элементы {rec.Count()}?", "Alarm", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                MedicineEntities1.GetContext().Medics.RemoveRange(rec);

                MedicineEntities1.GetContext().SaveChanges();
                MessageBox.Show("Вы удалили");
                DGRID.ItemsSource = MedicineEntities1.GetContext().Medics.ToList();
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            dobavlenie win1 = new dobavlenie(null);
            win1.Show();
            Close();
        }

        private void BtnEdit1_click(object sender, RoutedEventArgs e)
        {
            dobavlenie win1 = new dobavlenie((sender as Button).DataContext as Medic);
            win1.Show();
            Close();
        }
    }
}
