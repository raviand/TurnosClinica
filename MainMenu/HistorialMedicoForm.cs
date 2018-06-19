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
using System.Data.SqlClient;

namespace MainMenu
{
    public partial class HistorialMedicoForm : Form
    {
        ProfesionalNegocio pn;
        TurnoNegocio tn;
        Especialidad especialidad;
        List<Especialidad> especialidades;
        public Paciente paciente { get; set; }
        public HistorialMedicoForm()
        {
            paciente = new Paciente();
            paciente.CobreturaMedica = new ServicioMedico();
            paciente.HistoriaMedica = new List<Atencion>();
            paciente.Telefonos = new List<Telefono>();
            tn = new TurnoNegocio();
            especialidades = new List<Especialidad>();
            especialidad = new Especialidad();
            pn = new ProfesionalNegocio();
            InitializeComponent();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void HistorialMedicoForm_Load(object sender, EventArgs e)
        {
            pn.getEspecialidades();
            especialidades = pn.especialidades;
            foreach(Especialidad item in especialidades)
            {
                cbxEspecialidad.Items.Add(item.especialidad);
            }
            dgvHistorial.DataSource = tn.listarHistorial(Int32.Parse( paciente.IdPaciente ));

        }
    }
}
