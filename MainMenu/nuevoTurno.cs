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
    public partial class nuevoTurno : Form
    {
        ProfesionalNegocio pn;
        TurnoNegocio tn;
        Conexion conn;
        public Paciente paciente { get; set; }
        public Profesional profesional { get; set; }
        public User User { get; set; }
        BuscarPaciente bp;
        Paciente p;
        DateTime diaDeTurno;
        public List<Turno> Turnos { get; set; }
        public nuevoTurno()
        {
            diaDeTurno = new DateTime();
            Turnos = new List<Turno>();
            p = new Paciente();
            bp = new BuscarPaciente();
            tn = new TurnoNegocio();
            pn = new ProfesionalNegocio();
            InitializeComponent();
            int hora = 8;
            int min = 00;
            while (hora<19) cbxHora.Items.Add(hora++);
            while (min < 60) {
                cbxMinutos.Items.Add(min);
                min += 15;
            }
            dtpFechaTurno.MinDate = DateTime.Today;
            dtpFechaTurno.MaxDate = DateTime.Today.AddMonths(5);
        }

        private void nuevoTurno_Load(object sender, EventArgs e)
        {
            Dictionary<int, String> especialidades;
            try
            {
                if(User.TipoPermiso == 'P')
                {
                    especialidades = pn.getEspecialidades(User.idProfesional);
                    foreach (KeyValuePair<int, String> pair in especialidades)
                    {
                        cbxEspecialidades.Items.Add(pair);
                    }
                }
                else
                {
                    especialidades = pn.getEspecialidades();
                    foreach (KeyValuePair<int, String> pair in especialidades)
                    {
                        cbxEspecialidades.Items.Add(pair);
                    }
                }
                
                cbxEspecialidades.DisplayMember = "Value";

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
                cbxProfesionales.SelectedIndex = -1;
                cbxProfesionales.Items.Clear();
                if (cbxEspecialidades.SelectedIndex != -1)
                {
                    Dictionary<int, String> profesionales = new Dictionary<int, string>();
                    tn.idProfesional = ( (KeyValuePair<int , String>) cbxEspecialidades.SelectedItem).Key;
                    profesionales = tn.getProfesionales();
                    foreach (KeyValuePair<int, string> pair in profesionales)
                    {
                        if (pair.Key == User.idProfesional && User.TipoPermiso == 'P')
                            cbxProfesionales.Items.Add(pair);
                        if (User.TipoPermiso != 'P')
                            cbxProfesionales.Items.Add(pair);
                    }
                    cbxProfesionales.DisplayMember = "Value";
                }

            }catch(Exception ex)
            {
                MessageBox.Show("Error: " + ex.ToString());
            }
        }

        private void cbxProfesionales_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            if (cbxProfesionales.SelectedIndex != -1)
            {
                int id = ((KeyValuePair<int, String>)cbxProfesionales.SelectedItem).Key;
                try
                {
                    dgvDiasAtencion.DataSource = tn.getAtencionProfesional(id);
                    dgvDiasAtencion.Refresh();
                    dgvDiasAtencion.Columns["Key"].HeaderText = "Dias";
                    dgvDiasAtencion.Columns["Value"].HeaderText = "Turnos";
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.ToString());
                }
            }
        }

        private void btnPaciente_Click(object sender, EventArgs e)
        {
            bp.buscar = true;
            bp.ShowDialog();
            tbxIdPaciente.Text = bp.Paciente.IdPaciente;
            tbxNombre.Text = bp.Paciente.Nombre;
            tbxApellido.Text = bp.Paciente.Apellido;
        }
        
        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (puedeGuardar())
            {
                if (diaPuede())
                {
                    if (horaPuede() == 0)
                    {
                        tn.turno.Especialidad = ((KeyValuePair<int, String>) cbxEspecialidades.SelectedItem).Value;
                        tn.turno.idEspecialidad = Convert.ToString(((KeyValuePair<int, String>)cbxEspecialidades.SelectedItem).Key);
                        tn.turno.idPaciente = tbxIdPaciente.Text;
                        tn.turno.ApellidoPaciente = tbxApellido.Text;
                        tn.turno.ApellidoProfesional = ((KeyValuePair<int, String>)cbxProfesionales.SelectedItem).Value;
                        tn.turno.idProfesional =Convert.ToString( ((KeyValuePair<int, String>)cbxProfesionales.SelectedItem).Key);
                        tn.turno.FechaTurno = diaDeTurno;
                        int res = tn.guardarNuevoTurno(false);
                        MessageBox.Show("Se guardo con exito " + res + "Registro/s");
                        Close();
                    }
                    else if(horaPuede() == 1)
                    {
                       if( MessageBox.Show("la hora seleccionada del truno ya fue tomada\n¿Desea Reservar un sobreturno?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation) == DialogResult.Yes)
                        {
                            tn.turno.Especialidad = (String)cbxEspecialidades.SelectedItem;
                            tn.turno.idPaciente = tbxIdPaciente.Text;
                            tn.turno.ApellidoPaciente = tbxApellido.Text;
                            tn.turno.ApellidoProfesional = (String)cbxProfesionales.SelectedItem;
                            tn.turno.FechaTurno = diaDeTurno;
                            int res = tn.guardarNuevoTurno(true);
                            MessageBox.Show("Se guardo con exito " + res + "Registro/s");
                            Close();
                        }
                    }
                    else
                    {
                        MessageBox.Show("No pueden tomarse mas turnos para el horario seleccionado", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    }
                }
                else
                {
                    MessageBox.Show("El profesional no atiende el dia seleccionado", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
            }
            else
            {
                MessageBox.Show("Faltan campos por completar", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
           
            
        }

        private int horaPuede()
        {
            diaDeTurno = new DateTime();
            diaDeTurno = dtpFechaTurno.Value;
            TimeSpan time = new TimeSpan( (int)cbxHora.SelectedItem ,(int )cbxMinutos.SelectedItem, 0);
            diaDeTurno = diaDeTurno.Date + time;
            int cont = 0;
            foreach (Turno pair in Turnos)
            {
               if( pair.FechaTurno.CompareTo(diaDeTurno) == 0)
                {
                    cont++;
                }
            }

            return cont;
        }

        private bool diaPuede()
        {
            List<KeyValuePair<String, String>> dias = (List<KeyValuePair<String, String>>)dgvDiasAtencion.DataSource;
            String dia = diaDeSemana(dtpFechaTurno.Value.DayOfWeek.ToString());
            
            foreach (KeyValuePair<String, String> pair in dias)
            {
                if ( pair.Key.CompareTo(dia) == 0)
                {
                    return true;
                }
            }
            return false;
        }

        private String diaDeSemana(String dia)
        {
            if (dia.CompareTo("Monday") == 0)       return "LUNES";
            if (dia.CompareTo("Tuesday") == 0)      return "MARTES";
            if (dia.CompareTo("Wednesday") == 0)    return "MIERCOLES";
            if (dia.CompareTo("Thursday") == 0)     return "JUEVES";
            if (dia.CompareTo("Friday") == 0)       return "VIERNES";
            if (dia.CompareTo("Saturday") == 0)     return "SABADO";
            if (dia.CompareTo("Sunday") == 0)       return "DOMINGO";
            return "Error";

        }

        private bool puedeGuardar()
        {
            if (cbxEspecialidades.SelectedIndex == -1)      return false;
            if (cbxProfesionales.SelectedIndex == -1)       return false;
            if (tbxIdPaciente.Text.CompareTo("") == 0)      return false;
            if (cbxHora.SelectedIndex == -1)                return false;
            if (cbxMinutos.SelectedIndex == -1)             return false;
            return true;
        }

        private void dtpFechaTurno_ValueChanged(object sender, EventArgs e)
        {
            List<DateTime> Horarios = new List<DateTime>();
            List<TimeSpan> timeSpans = new List<TimeSpan>();
            List<DateTime> Disponibles = new List<DateTime>();
           
           TimeSpan tiempo;
            for(int i = 8; i < 19; i++)
            {
                for(int m = 0; m < 60;)
                {
                    tiempo = new TimeSpan(i, m, 0);
                    timeSpans.Add(tiempo);
                    m += 15;
                }
            }

            foreach(TimeSpan pair in timeSpans)
            {
                DateTime dia = new DateTime();
                dia = dtpFechaTurno.Value.Date + pair;
                Horarios.Add(dia);
            }

            foreach(Turno fecha in Turnos)
            {
                foreach (DateTime pair in Horarios)
                {
                    if(fecha.FechaTurno.Date == pair.Date)
                    {
                        if (fecha.FechaTurno != pair)
                        {
                            if(!Disponibles.Contains(pair))
                                Disponibles.Add(pair);
                        }
                    }
                }
            }
            
            dgvTurnosDisponibles.DataSource = Disponibles;
            dgvTurnosDisponibles.Columns["Day"].Visible = false;
            dgvTurnosDisponibles.Columns["DayofWeek"].Visible = false;
            dgvTurnosDisponibles.Columns["DayOfYear"].Visible = false;
            dgvTurnosDisponibles.Columns["Hour"].Visible = false;
            dgvTurnosDisponibles.Columns["Millisecond"].Visible = false;
            dgvTurnosDisponibles.Columns["Minute"].Visible = false;
            dgvTurnosDisponibles.Columns["Month"].Visible = false;
            dgvTurnosDisponibles.Columns["Second"].Visible = false;
            dgvTurnosDisponibles.Columns["Ticks"].Visible = false;
            dgvTurnosDisponibles.Columns["Year"].Visible = false;
            dgvTurnosDisponibles.Columns["Kind"].Visible = false;

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
