using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MainMenu
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            
           // new Login().Show();
            
         }

        private void btnCargarMedico_Click(object sender, EventArgs e)
        {
            new CargaMedicoForm().ShowDialog();
            
        }

        private void btnCargaPaciente_Click(object sender, EventArgs e)
        {
            new CargaPacienteForm().ShowDialog();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            new BuscarPaciente().ShowDialog();
        }

        private void btnEliminarPaciente_Click(object sender, EventArgs e)
        {
            new EliminarPacienteForm().Show();
        }
    }
}
