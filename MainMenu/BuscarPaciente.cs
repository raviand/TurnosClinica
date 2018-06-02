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

        public bool  buscar { get; set; }
        public Paciente Paciente { get; set; }
        public BuscarPaciente()
        {
            Paciente = new Paciente();
            InitializeComponent();
        }
        public BuscarPaciente(bool bo)
        {
            Paciente = new Paciente();
            buscar = bo;
            InitializeComponent();
        }

        private void BuscarPaciente_Load(object sender, EventArgs e)
        {
            try
            {
                PacienteNegocio pacienteNegocio = new PacienteNegocio();
                dgvListaPacientes.DataSource =  pacienteNegocio.listar();
                if (buscar)
                {
                    btnModificar.Visible = false;
                    btnSeleccionar.Visible = true;
                }
                else
                {
                    btnModificar.Visible = true;
                    btnSeleccionar.Visible = false;
                }
            }
            catch(Exception err)
            {
                MessageBox.Show("Ocurrio un error durante la ejecucion" + err.ToString());
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
           
            Paciente = (Paciente)dgvListaPacientes.CurrentRow.DataBoundItem;
            new CargaPacienteForm(Paciente).ShowDialog();
        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            Paciente = (Paciente)dgvListaPacientes.CurrentRow.DataBoundItem;
            Close();
        }
    }
}
