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
        BuscarProfesional bp;
        public Principal()
        {
            bp = new BuscarProfesional();
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

        private void btnBuscarProfesional_Click(object sender, EventArgs e)
        {
            bp.ShowDialog();
        }

        private void btnVerAgenda_Click(object sender, EventArgs e)
        {
            new TurnosForm().ShowDialog();
        }
    }
}
