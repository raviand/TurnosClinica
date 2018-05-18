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

namespace MainMenu
{
    public partial class BuscarPaciente : Form
    {
        public BuscarPaciente()
        {
            InitializeComponent();
        }

        private void BuscarPaciente_Load(object sender, EventArgs e)
        {
            try
            {
                PacienteNegocio pacienteNegocio = new PacienteNegocio();
                dgvListaPacientes.DataSource =  pacienteNegocio.listar();
                //dgvListaPacientes.Columns["fechaIngreso"].Visible = false;
                //dgvListaPacientes.Columns["IdPaciente"].Visible = false;
                //dgvListaPacientes.Columns["CoberturaMedica"].Visible = false;
                //dgvListaPacientes.Columns["FechaNac"].Visible = false;

            }
            catch(Exception err)
            {
                MessageBox.Show("Ocurrio un error durante la ejecucion" + err.ToString());
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            Paciente paciente = new Paciente();
            paciente = (Paciente)dgvListaPacientes.CurrentRow.DataBoundItem;
            new CargaPacienteForm(paciente).ShowDialog();
        }
    }
}
