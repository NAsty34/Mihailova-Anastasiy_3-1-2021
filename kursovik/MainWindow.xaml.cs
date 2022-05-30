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

namespace kursovik
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
       
        
        public MainWindow()
        {
            InitializeComponent();
        }
       

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (Login.Text.Length < 4 || Password.Text.Length < 4)
            {
                MessageBox.Show("Вы неврено ввели данные");
            }
            else
            {
                glav win1 = new glav(Login.Text, Password.Text);
                win1.Show();
                Close();
            }
          
            
        }
    }
}
