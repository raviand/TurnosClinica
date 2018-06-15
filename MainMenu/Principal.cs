using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Negocio;
using Datos;
using System.Data.SqlClient;

namespace MainMenu
{
    public partial class Principal : Form
    {
        BuscarProfesional bp;
        Conexion conn;
        TurnosForm tf;
        UserNegocios un;
        User user;
        public Principal()
        {
            user = new User();
            un = new UserNegocios();
            tf = new TurnosForm();
            conn = new Conexion();
            bp = new BuscarProfesional();
            InitializeComponent();
           
        }

        private void btnVerAgenda_Click(object sender, EventArgs e)
        {
            List<User> users = un.listarUsuarios();
            String us = tbxUser.Text.Trim();
            String ps = tbxPass.Text.Trim();
            bool puedeEntrar = false;
            foreach(User item in users)
            {
                if(item.Usuario.CompareTo(us) == 0 && item.Pass.CompareTo(ps) == 0)
                {
                    user = item;
                    puedeEntrar = true;
                    break;
                }
            }
            tbxPass.Text = "";
            tbxUser.Text = "";
            if (puedeEntrar)
            {
                tf.usuario = user;
                tf.ShowDialog();
            }
            else
            {
                MessageBox.Show("Ususario o contraseña incorrecto");
            }
            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
