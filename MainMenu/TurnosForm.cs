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
    public partial class TurnosForm : Form
    {
        TurnoNegocio tn;
        nuevoTurno nt;
        PacienteNegocio pn;
        ProfesionalNegocio ProfesionalNegocio;
        BuscarPaciente bp;
        BuscarProfesional bpro;
        CargaPacienteForm cp;
        CargaMedicoForm cm;
        CambioEstado ce;
        Usuarios u;
       
        public User usuario { get; set; }


        public TurnosForm()
        {
            ProfesionalNegocio = new ProfesionalNegocio();
            ce = new CambioEstado();
            bp = new BuscarPaciente();
            pn = new PacienteNegocio();
            nt = new nuevoTurno();
            tn = new TurnoNegocio();
            cp = new CargaPacienteForm();
            cm = new CargaMedicoForm();
            bpro = new BuscarProfesional();
            u = new Usuarios();
            usuario = new User();
            InitializeComponent();

            dgvTurnos.DataSource = tn.listarTurnos();
            dgvTurnos.Columns["FechaSolicitud"].Visible = false;
            dgvTurnos.Columns["idTurno"].Visible = false;
            dgvTurnos.Columns["idEstado"].Visible = false;
            dgvTurnos.Columns["idPaciente"].Visible = true;
            dgvTurnos.Columns["idProfesional"].Visible = false;
            dgvTurnos.Columns["idEspecialidad"].Visible = false;
            dgvTurnos.Columns["Estado"].DisplayIndex = 8;
            //dgvTurnos.cell
        }

        private void btnNuevoTurno_Click(object sender, EventArgs e)
        {
            nt.Turnos = (List<Turno>)dgvTurnos.DataSource;
            nt.User = usuario;
            nt.ShowDialog();
            nt = new nuevoTurno();
            btnBuscar_Click(null, null);
            //dgvTurnos.DataSource = tn.listarTurnos();
        }

        private void TurnosForm_Load(object sender, EventArgs e)
        {
            Dictionary<int, String> especialidades;
            List<String> estados;
            try
            {
                btnBuscar_Click(null, null);
                estados = tn.listarEstado();
                foreach(String pair in estados)
                    cbxEstados.Items.Add(pair);
                
                especialidades = ProfesionalNegocio.getEspecialidades();

                foreach (KeyValuePair<int, String> pair in especialidades)
                    cbxEspecialidades.Items.Add(pair);

                cbxEspecialidades.DisplayMember = "Value";
                for(int i = 0; i < 4; i++)
                {
                    cbxMesAnterior.Items.Add(i +1);
                    cbxMesPosterior.Items.Add(i +1);
                }
                if(usuario.TipoPermiso == 'P')
                {
                    cbxEspecialidades.Visible = false;
                    cbxProfesional.Visible = false;
                    lblProfesional.Visible = false;
                    lblEspecialidad.Visible = false;
                }
                else
                {
                    cbxEspecialidades.Visible = true;
                    cbxProfesional.Visible = true;
                    lblProfesional.Visible = true;
                    lblEspecialidad.Visible = true;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.ToString());
            }
        }

        private void cbxEspecialidades_SelectedIndexChanged(object sender, EventArgs e)
        {

            try
            {
                cbxProfesional.SelectedIndex = -1;
                cbxProfesional.Items.Clear();
                if (cbxEspecialidades.SelectedIndex != -1)
                {
                    Dictionary<int, String> profesionales = new Dictionary<int, string>();
                    tn.idProfesional = ((KeyValuePair<int, String>)cbxEspecialidades.SelectedItem).Key;
                    profesionales = tn.getProfesionales();
                    foreach (KeyValuePair<int, string> pair in profesionales)
                    {
                        cbxProfesional.Items.Add(pair);
                    }
                    cbxProfesional.DisplayMember = "Value";
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.ToString());
            }
        }

        private void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            bp.buscar = true;
            bp.ShowDialog();
            tbxPaciente.Text = bp.Paciente.Apellido + ", " + bp.Paciente.Nombre;
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if(usuario.TipoPermiso == 'P')
            {
                String[] name = usuario.NombreProfesional.Split(',');
                tn.turno.ApellidoProfesional = name[0].Trim();
                tn.turno.NombreProfesional = name[1].Trim();
                tn.turno.idProfesional = usuario.idProfesional.ToString();
            }
            if (cbxProfesional.SelectedIndex != -1)
            {
                String completo = ((KeyValuePair<int, String>)cbxProfesional.SelectedItem).Value;
                String[] nombre;
                nombre = completo.Split(',');
                tn.turno.ApellidoProfesional = nombre[0].Trim();
                tn.turno.NombreProfesional = nombre[1].Trim();
            }
            if(cbxEstados.SelectedIndex != -1)
                tn.turno.Estado =  (String)cbxEstados.SelectedItem;
            if(cbxEspecialidades.SelectedIndex!=-1)
                tn.turno.Especialidad = ((KeyValuePair<int, String>)cbxEspecialidades.SelectedItem).Value;
            if(tbxPaciente.Text.CompareTo("") != 0)
            {
                tn.turno.idPaciente = bp.Paciente.IdPaciente;
                tn.turno.ApellidoPaciente = bp.Paciente.Apellido;
                tn.turno.NombrePaciente = bp.Paciente.Nombre;
            }
            if (cbxMesAnterior.SelectedIndex != -1) tn.mesAnterior = (int)cbxMesAnterior.SelectedItem;
            if (cbxMesPosterior.SelectedIndex != -1) tn.mesPosterior = (int)cbxMesPosterior.SelectedItem;

            dgvTurnos.DataSource = tn.listarTurnos();
            tn = new TurnoNegocio();
            reset();
        }

        private void reset()
        {
            cbxProfesional.SelectedIndex = -1;
            cbxEspecialidades.SelectedIndex = -1;
            cbxEstados.SelectedIndex = -1;
            cbxMesAnterior.SelectedIndex = -1;
            cbxMesPosterior.SelectedIndex = -1;
            tbxPaciente.Text = "";
        }

        private void nuevoPacienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cp.ShowDialog();
        }

        private void nuevoProfesionalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (usuario.TipoPermiso == 'R')
                cm.ShowDialog();
            else
                MessageBox.Show("No tiene permiso para este campo");
        }

        private void buscarPacienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bp.buscar = false;
            bp.ShowDialog();

        }

        private void buscarProfesionalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (usuario.TipoPermiso != 'P')
                bpro.ShowDialog();
            else
                MessageBox.Show("Su usuario no le permite ingresar a esta opcion");
        }

        private void dgvTurnos_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //Cambio de estado
            Turno t = (Turno)dgvTurnos.CurrentRow.DataBoundItem;
            ce.turno = t;
            ce.ShowDialog();
            btnBuscar_Click(null, null);
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCambioEstado_Click(object sender, EventArgs e)
        {
            Turno t = (Turno)dgvTurnos.CurrentRow.DataBoundItem;
            ce.turno = t;
            ce.ShowDialog();
        }

        private void acercaDeTurnosNackToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Acerca().ShowDialog();
        }

        private void especialidadesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (usuario.TipoPermiso == 'R')
                new Especialidades().ShowDialog();
            else
                MessageBox.Show("Necesita usuario administrador para ingresar aqui");

            
        }

        private void serviciosMedicosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (usuario.TipoPermiso == 'R')
                new CoberturaMedica().ShowDialog();
            else
                MessageBox.Show("Necesita usuario administrador para ingresar aqui");
            
        }

        private void usuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (usuario.TipoPermiso == 'R')
                u.ShowDialog();
            else
                MessageBox.Show("Necesita usuario administrador para ingresar aqui");
        }
    }
}
