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
        public Principal()
        {
            tf = new TurnosForm();
            conn = new Conexion();
            bp = new BuscarProfesional();
            InitializeComponent();
        }

       

       

        private void btnVerAgenda_Click(object sender, EventArgs e)
        {
            new TurnosForm().ShowDialog();
        }
    }
}
