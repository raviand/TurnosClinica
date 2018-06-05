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
    public partial class BuscarProfesional : Form
    {
        ProfesionalNegocio pn;
        CargaMedicoForm CargaMedico;
        GeneralNegocio gn;
        
        public Profesional Profesional { get; set; }

        public BuscarProfesional()
        {
            gn = new GeneralNegocio();
            pn = new ProfesionalNegocio();
            Profesional = new Profesional();
            Profesional.Dir = new Direccion();
            Profesional.Telefonos = new List<Telefono>();
            Profesional.ServiciosHabilitados = new List<ServicioMedico>();
            Profesional.Atencion = new Dictionary<int, string>();
            Profesional.Especialidades = new Dictionary<int, string>();

            InitializeComponent();
            load();
            
        }

        public void load()
        {
            CargaMedico = new CargaMedicoForm();
            Dictionary<int, String> prov;
            try
            {
                dgvProfesionales.DataSource = pn.listarProfesionales();
                dgvProfesionales.Columns["Atencion"].Visible = false;
                dgvProfesionales.Columns["FechaIngreso"].Visible = false;
                dgvProfesionales.Columns["FechaNac"].Visible = false;
                dgvProfesionales.Columns["DNI"].Visible = false;
                dgvProfesionales.Columns["Dir"].Visible = false;
                dgvProfesionales.Columns["Nombre"].DisplayIndex = 1;
                dgvProfesionales.Columns["Apellido"].DisplayIndex = 2;
                dgvProfesionales.Columns["AtiendeADomicilio"].DisplayIndex = 3;
                dgvProfesionales.Columns["Mail"].DisplayIndex = 4;
                dgvProfesionales.Columns["Especialidades"].DisplayIndex = 5;
                dgvProfesionales.Columns["TelefonoPrincipal"].DisplayIndex = 6;
                

                prov = gn.getProvincia();
                foreach(var pair in prov)
                {
                    cbxProvincia.Items.Add(pair);
                }
                cbxProvincia.DisplayMember = "Value";
                cbxProvincia.ValueMember = "Key";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error en la carga de la ventana:\n" + ex.ToString());
            }
        }

        private void cbxProvincia_SelectedIndexChanged(object sender, EventArgs e)
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
            pn.Profesional.Dir = new Direccion();
            pn.Profesional.Nombre = tbxNombre.Text;
            pn.Profesional.Apellido = tbxApellido.Text;
            if(tbxDni.Text.CompareTo("") != 0) pn.Profesional.Dni = tbxDni.Text;
            if (cbxProvincia.SelectedIndex != -1) pn.Profesional.Dir.Provincia = ((KeyValuePair<int, String>)cbxProvincia.SelectedItem).Value;
            else pn.Profesional.Dir.Provincia = "";
            if (cbxLocalidad.SelectedIndex != -1) pn.Profesional.Dir.Localidad = ((KeyValuePair<int, String>)cbxLocalidad.SelectedItem).Value;
            else pn.Profesional.Dir.Localidad = "";
            dgvProfesionales.DataSource = pn.buscarProfesionales();
           
            dgvProfesionales.Columns["Nombre"           ].DisplayIndex = 1;
            dgvProfesionales.Columns["Apellido"         ].DisplayIndex = 2;
            dgvProfesionales.Columns["AtiendeADomicilio"].DisplayIndex = 3;
            dgvProfesionales.Columns["Mail"             ].DisplayIndex = 4;
            dgvProfesionales.Columns["Especialidades"   ].DisplayIndex = 5;
            dgvProfesionales.Columns["TelefonoPrincipal"].DisplayIndex = 6;
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

        private void btnModificar_Click(object sender, EventArgs e)
        {

        }
    }
}
