using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;
using Negocio;

namespace MainMenu
{
    public partial class EliminarPacienteForm : Form
    {
        public EliminarPacienteForm()
        {
            InitializeComponent();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Int32.Parse(tbxIdEliminar.Text);
                MessageBox.Show("Esta seguro que quiere eliminar el registro: " + id);
                int reg = new PacienteNegocio().eliminar(id);
                MessageBox.Show("Registro modificados: " + reg);
            }catch(Exception ex)
            {
                MessageBox.Show("Error al eliminar el registro");
            }
            
            
        }
    }
}
