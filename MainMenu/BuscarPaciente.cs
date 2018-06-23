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
        PacienteNegocio pn;
        CargaPacienteForm cp;
        GeneralNegocio gn;
        HistorialMedicoForm hm;

        public BuscarPaciente()
        {
            hm = new HistorialMedicoForm();
            Paciente = new Paciente();
            InitializeComponent();
        }
        public BuscarPaciente(bool busca)
        {
            Paciente = new Paciente();
            buscar = busca;
            InitializeComponent();
        }

        private void BuscarPaciente_Load(object sender, EventArgs e)
        {
            Dictionary<int, String> prov;
            try
            {
                gn = new GeneralNegocio();
                cp = new CargaPacienteForm();
                pn = new PacienteNegocio();


                prov = gn.getProvincia();
                cbxProvincia.Items.Clear();
                foreach (var pair in prov)
                {
                    cbxProvincia.Items.Add(pair);
                }
                cbxProvincia.DisplayMember = "Value";
                cbxProvincia.ValueMember = "Key";

                dgvListaPacientes.DataSource =  pn.listar();
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
            cp.pacient = Paciente;
            cp.pacient.Telefonos = pn.listarTelefonos(Int32.Parse( Paciente.IdPaciente) );
            cp.esModificar = true;
            cp.ShowDialog();
        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            Paciente = (Paciente)dgvListaPacientes.CurrentRow.DataBoundItem;
            Close();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Paciente = (Paciente)dgvListaPacientes.CurrentRow.DataBoundItem;
            if( MessageBox.Show("Esta seguro que quiere eliminar a " + Paciente.Apellido + ", " + Paciente.Nombre + "?", "Advertencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                pn.eliminar(Int32.Parse(Paciente.IdPaciente));
                dgvListaPacientes.DataSource = pn.listar();
            }
        }

        private void cbxProvincia_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            cbxLocalidad.ResetText();
            cbxLocalidad.Items.Clear();
            Dictionary<int, String> loc;
            int id;
            if (cbxProvincia.SelectedIndex != -1)
            {
                id = ((KeyValuePair<int, String>)cbxProvincia.SelectedItem).Key;
                loc = gn.getLocalidad(id);
                foreach (var pair in loc)
                {
                    cbxLocalidad.Items.Add(pair);
                }
            }

            cbxLocalidad.DisplayMember = "Value";
            cbxLocalidad.ValueMember = "Key";

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {

            pn.paciente.Dir = new Direccion();
            pn.paciente.Nombre = tbxNombre.Text;
            pn.paciente.Apellido = tbxApellido.Text;
            pn.paciente.Dni = tbxDni.Text.Trim();
            if (tbxDni.Text.CompareTo("") != 0) pn.paciente.Dni = tbxDni.Text;
            if (cbxProvincia.SelectedIndex != -1) pn.paciente.Dir.Provincia = ((KeyValuePair<int, String>)cbxProvincia.SelectedItem).Value;
            else pn.paciente.Dir.Provincia = "";
            if (cbxLocalidad.SelectedIndex != -1) pn.paciente.Dir.Localidad = ((KeyValuePair<int, String>)cbxLocalidad.SelectedItem).Value;
            else pn.paciente.Dir.Localidad = "";
            dgvListaPacientes.DataSource = pn.buscarPacientes();
            resetBuscar();
        }

        private void resetBuscar()
        {

            tbxNombre.Text = "";
            tbxApellido.Text = "";
            tbxDni.Text = "";
            cbxLocalidad.SelectedIndex = -1;
            cbxProvincia.SelectedIndex = -1;
        }

        private void btnHistorial_Click(object sender, EventArgs e)
        {
            hm.paciente = (Paciente)dgvListaPacientes.CurrentRow.DataBoundItem; ;
            hm.ShowDialog();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
