using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using Negocio;
using Datos;

namespace MainMenu
{
    public partial class CargaPacienteForm : Form
    {
     
        Dictionary<int, String> tipoTel;
        Dictionary<int, String> provincia;
        Dictionary<int, String> coberturaMedica;
        Dictionary<int, String> planMedico;
        Dictionary<int, String> localidad;
        GeneralNegocio gn;
        PacienteNegocio pn;
        Verificacion ver;
        Paciente paciente;
        controlTelefonos ct;
        public Paciente pacient { get; set; }


        public bool esModificar { get; set; }
        int contTel;

        public CargaPacienteForm()
        {
           
            InitializeComponent();
            load();
        }

        public CargaPacienteForm(Paciente paciente)
        {
            InitializeComponent();
            load();

            this.paciente = paciente;
            ct.telefonos = paciente.Telefonos;
            tbxNombre.Text = paciente.Nombre;
            tbxNombre.ReadOnly = true;
            tbxApellido.Text = paciente.Apellido;
            tbxApellido.ReadOnly = true;
            tbxMail.Text = paciente.Mail;
            tbxDni.Text = paciente.Dni;
            tbxDni.ReadOnly = true;
            dtpFechaNacimiento.Value = paciente.FechaNac;
            cbxCoberturaMedica.DisplayMember = "value";
            cbxCoberturaMedica.ValueMember = "key";
            MessageBox.Show("cobertura medica: " + paciente.CobreturaMedica.Nombre + "\nPlan =  " + paciente.CobreturaMedica.Plan);
            int id = Convert.ToInt32(paciente.CobreturaMedica.Nombre);
            foreach(var pair in cbxCoberturaMedica.Items)
            {
                if(((KeyValuePair<int, String>) pair).Key == id)
                {
                    cbxCoberturaMedica.SelectedItem = pair;
                }
            }
            cbxPlan.DisplayMember = "value";
            cbxPlan.ValueMember = "key";

            id = Convert.ToInt32(paciente.CobreturaMedica.Plan);
            foreach (var pair in cbxPlan.Items)
            {
                if (((KeyValuePair<int, String>)pair).Key == id)
                {
                    cbxPlan.SelectedItem = pair;
                }
            }

            tbxCarnetMedico.Text = paciente.CobreturaMedica.NumeroCredencial;
            tbxCalle.Text = paciente.Dir.Calle;
            tbxPiso.Text = paciente.Dir.Piso;
            tbxDepto.Text = paciente.Dir.Departamento;
            tbxCP.Text = paciente.Dir.CodigoPostal;
            id = Convert.ToInt32(paciente.Dir.Provincia);
            foreach (var pair in cbxProvincia.Items)
            {
                if (((KeyValuePair<int, String>)pair).Key == id)
                {
                    cbxProvincia.SelectedItem = pair;
                }
            }
            id = Convert.ToInt32(paciente.Dir.Localidad);
            foreach (var pair in cbxLocalidad.Items)
            {
                if (((KeyValuePair<int, String>)pair).Key == id)
                {
                    cbxLocalidad.SelectedItem = pair;
                }
            }

        }

        private void load()
        {
            pacient = new Paciente();
            ct = new controlTelefonos();
            ver = new Verificacion();
            contTel = 0;
            paciente = new Paciente();
            paciente.Telefonos = new List<Telefono>();
            paciente.Dir = new Direccion();
            pacient.CobreturaMedica = new ServicioMedico();
            pacient.Telefonos = new List<Telefono>();
            pacient.Dir = new Direccion();
            paciente.CobreturaMedica = new ServicioMedico();
            cbxCoberturaMedica.Items.Clear();
            cbxProvincia.Items.Clear();
            cbxTipoTel.Items.Clear();

            gn = new GeneralNegocio();
            pn = new PacienteNegocio();
            try
            {
                tipoTel = gn.getTiposTelefonos();
                foreach (var pair in tipoTel)
                {
                    cbxTipoTel.Items.Add(pair);

                }
                cbxTipoTel.DisplayMember = "value";
                provincia = gn.getProvincia();
                foreach(var pair in provincia)
                {
                    cbxProvincia.Items.Add(pair);
                }
                cbxProvincia.DisplayMember = "value";
                coberturaMedica = gn.getCoberturaMedica();
                foreach (var pair in coberturaMedica)
                {
                    cbxCoberturaMedica.Items.Add(pair);
                }
                cbxCoberturaMedica.DisplayMember = "value";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error en carga de Items "+ ex.ToString());
            }

            dtpFechaNacimiento.MaxDate = DateTime.Today;
            dtpFechaNacimiento.MinDate = DateTime.Today.AddYears(-100);

            
        }

        private void cbxCoberturaMedica_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbxPlan.ResetText();
            cbxPlan.Items.Clear();
            int id = 0;
            
            try
            {
                if(cbxCoberturaMedica.SelectedIndex != -1)
                {
                    id = ((KeyValuePair<int, String>)cbxCoberturaMedica.SelectedItem).Key;

                    if (id != 0)
                        planMedico = gn.getPlanMedico(id);

                    foreach (var pair in planMedico)
                    {
                        cbxPlan.Items.Add(pair);
                    }
                    cbxPlan.DisplayMember = "value";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al obtener Plan Medico");
            }
            
        }

        private void cbxProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbxLocalidad.ResetText();
            cbxLocalidad.Items.Clear();
           
            
            try
            {

                if(cbxProvincia.SelectedIndex != -1)
                {
                    int llave = ((KeyValuePair<int, String>)cbxProvincia.SelectedItem).Key;
                    if (llave != 0)
                        localidad = gn.getLocalidad(llave);
                    else
                        localidad.Add(0, "No Aclara");
                    foreach (var pair in localidad)
                    {
                        cbxLocalidad.Items.Add(pair);
                    }
                    cbxLocalidad.DisplayMember = "value";
                }
                
            }catch(Exception ex)
            {
                MessageBox.Show("Error al obtener localidad");
            }
        }

        private void tbxDni_KeyPress(object sender, KeyPressEventArgs e)
        {
            
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        private void tbxCarnetMedico_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        private bool testNumeros(KeyPressEventArgs e)
        {
            if (Char.IsDigit(e.KeyChar))
            {
                e.Handled = false;
            }
            else if (Char.IsControl(e.KeyChar))
            {
                e.Handled = false;
            }
            else if (Char.IsSeparator(e.KeyChar))
            {
                e.Handled = true;
            }
            else
            {
                e.Handled = true;
            }
            return e.Handled;

        }
        
        private void tbxTelefono_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        private void tbxCP_KeyPress(object sender, KeyPressEventArgs e)
      {
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        private void tbxPiso_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            Telefono telefono = new Telefono();
            if (!tbxTelefono.Text.Equals("") && cbxTipoTel.SelectedIndex != -1)
            {
                if (cbxTipoTel.Items.Count > 0)
                {
                    telefono.Numero = tbxTelefono.Text.Trim();
                    cbxTipoTel.ValueMember = "key";
                    telefono.Tipo = Convert.ToString( cbxTipoTel.SelectedIndex +1 );
                    if (ver.existeTelefono(telefono.Numero, pacient.Telefonos))
                    {
                        MessageBox.Show("El telefono: " + telefono.Numero + " Ya se encuentra registrado");
                    }
                    else
                    {
                        pacient.Telefonos.Add(telefono);
                        if(ct.telefonos != null)
                            contTel = ct.telefonos.Count;
                        ct.telefonos = new List<Telefono>();
                        ct.telefonos = pacient.Telefonos;
                        //MessageBox.Show("Se cargo: " + paciente.Telefonos[contTel].Numero + " - " + paciente.Telefonos[contTel].Tipo);

                    }
                    
                    tbxTelefono.Text = "";
                    cbxTipoTel.SelectedItem = null;
                }
                else
                {
                    MessageBox.Show("2- Debe completar los campos de telefono para poder Agregar");
                }
            }
            else
            {
                MessageBox.Show("1- Debe completar los campos de telefono para poder Agregar");
            }
            
        }

        public bool puedeGuardar()
        {
            bool puede = true;
            if (tbxNombre.Text.Trim().CompareTo("")==0)
            {
                puede = false;
                MessageBox.Show("Es obligatorio ingresar el Nombre");
            }
            if (tbxApellido.Text.Trim().CompareTo("") == 0)
            {
                puede = false;
                MessageBox.Show("Es obligatorio ingresar el Apellido");
            }
            if (tbxCalle.Text.Trim().CompareTo("") == 0)
            {
                puede = false;
                MessageBox.Show("Es obligatorio ingresar la Calle y Nro. puerta");
            }
            if (tbxDni.Text.Trim().CompareTo("") == 0)
            {
                puede = false;
                MessageBox.Show("Es obligatorio ingresar el DNI");
            }
            if (tbxMail.Text.Trim().CompareTo("") == 0)
            {
                puede = false;
                MessageBox.Show("Es obligatorio ingresar el Correo electronico");
            }
            if (contTel == 0)
            {
                puede = false;
                MessageBox.Show("Es obligatorio agregar un telefono");
            }
            if(dtpFechaNacimiento.Value.ToShortDateString().CompareTo(DateTime.Today.ToShortDateString()) == 0)
            {
                puede = false;
                MessageBox.Show("Ingrese fecha de nacimiento");
            }
            if(cbxPlan.SelectedIndex == -1)
            {
                puede = false;
                MessageBox.Show("Ingrese Cobertura medica");
            }
            if (cbxLocalidad.SelectedIndex == -1)
            {
                puede = false;
                MessageBox.Show("Ingrese Provincia");
            }
            if (!ver.IsValidEmail(tbxMail.Text))
            {
                puede = false;
                MessageBox.Show("No es un mail valido");
            }

            return puede;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            
            if (puedeGuardar())
            {
                MessageBox.Show("Se puede guardar");
                int res;
                try
                {
                    pacient.Nombre = tbxNombre.Text;
                    pacient.Apellido = tbxApellido.Text;
                    pacient.Dni = tbxDni.Text;
                    pacient.Mail = tbxMail.Text;
                    pacient.FechaNac = dtpFechaNacimiento.Value;
                    pacient.FechaIngreso = DateTime.Today;
                    pacient.CobreturaMedica.NumeroCredencial = tbxCarnetMedico.Text;
                    pacient.CobreturaMedica.Nombre = Convert.ToString(((KeyValuePair<int, String>) cbxCoberturaMedica.SelectedItem).Value);
                    pacient.CobreturaMedica.Plan = Convert.ToString(((KeyValuePair<int, String>)cbxPlan.SelectedItem).Key);
                    pacient.Dir.Calle = tbxCalle.Text;
                    pacient.Dir.Localidad = Convert.ToString( ( (KeyValuePair<int, String>) cbxLocalidad.SelectedItem ).Key );
                    if (tbxPiso.Text.CompareTo("") != 0) pacient.Dir.Piso = tbxPiso.Text;
                    if (tbxDepto.Text.CompareTo("") != 0) pacient.Dir.Departamento = tbxDepto.Text;
                    if (tbxCP.Text.CompareTo("") != 0) pacient.Dir.CodigoPostal = tbxCP.Text;
                    //MessageBox.Show(paciente.ToString());
                    pn.setPaciente(pacient);
                    if (esModificar)
                    {
                        ///Para modificar los ingresos
                        res = pn.modificarPaciente(pacient);
                        MessageBox.Show("Se modifico el registro");
                    }
                    else
                    {
                        res = pn.cargarPaciente(pacient);
                        MessageBox.Show("Se ha registrado con exito ");
                    }
                    

                    reset();
                    Close();
                }
                catch (SqlException ex)
                {
                    if(ex.Number == 2627)
                    {
                        MessageBox.Show("Alguno de los campos unicos ya fueron registrados");
                    }
                }
                catch (Exception ex)
                {
                    
                         MessageBox.Show("Error al cargar paciente\n" + ex.ToString());
                }
            }
        }

        public void reset()
        {
            tbxApellido.Clear();
            tbxCalle.Clear();
            tbxCarnetMedico.Clear();
            tbxCP.Clear();
            tbxDepto.Clear();
            tbxDni.Clear();
            tbxMail.Clear();
            tbxNombre.Clear();
            tbxPiso.Clear();
            tbxTelefono.Clear();
            dtpFechaNacimiento.Value = DateTime.Today;
            cbxPlan.SelectedIndex = -1;
            cbxCoberturaMedica.SelectedIndex = -1;
            cbxLocalidad.SelectedIndex = -1;
            cbxProvincia.SelectedIndex = -1;
            cbxTipoTel.SelectedIndex = -1;
            paciente.Telefonos = new List<Telefono>();
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            reset();
            
        }

        private void btnVerTelefonos_Click(object sender, EventArgs e)
        {
            if (!esModificar)
            {
                ct.telefonos = pacient.Telefonos;
                ct.ShowDialog();
                if (ct.borro) contTel--;
            }
            else
            {
                //Arreglar el cambio de telefonos de una modificacion
                //ct.ShowDialog();
                ct.Editar = false;
                ct.ShowDialog();
            }
            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            if( MessageBox.Show("Esta seguro que desea salir? todos los cambios se eliminaran", "Advertencia", MessageBoxButtons.YesNo ) == DialogResult.Yes)
            {
                Close();
            }
        }

        private void CargaPacienteForm_Load(object sender, EventArgs e)
        {
            load();
            if (esModificar)
            {
                btnLimpiar.Visible = false;
                tbxNombre.ReadOnly = true;
                tbxApellido.ReadOnly = true;
                tbxDni.ReadOnly = true;
                dtpFechaNacimiento.Enabled = false;
                //pacient.Telefonos = pn.listarTelefonos(Int32.Parse( pacient.IdPaciente));
                ct.id = Int32.Parse(pacient.IdPaciente);
                ct.Editar = true;
                pacient.Telefonos = ct.telefonos;
                tbxNombre.Text = pacient.Nombre;
                tbxApellido.Text = pacient.Apellido;
                tbxMail.Text = pacient.Mail;
                tbxDni.Text = pacient.Dni;
                dtpFechaNacimiento.Value = pacient.FechaNac.Date;
                cbxCoberturaMedica.DisplayMember = "value";
                cbxCoberturaMedica.ValueMember = "key";
                MessageBox.Show("cobertura medica: " + pacient.CobreturaMedica.Nombre + "\nPlan =  " + pacient.CobreturaMedica.Plan);
                int id = Convert.ToInt32(pacient.CobreturaMedica.Nombre);
                foreach (var pair in cbxCoberturaMedica.Items)
                {
                    if (((KeyValuePair<int, String>)pair).Key == id)
                    {
                        cbxCoberturaMedica.SelectedItem = pair;
                        break;
                    }
                }
                cbxPlan.DisplayMember = "value";
                cbxPlan.ValueMember = "key";

                id = Convert.ToInt32(pacient.CobreturaMedica.Plan);
                foreach (var pair in cbxPlan.Items)
                {
                    if (((KeyValuePair<int, String>)pair).Key == id)
                    {
                        cbxPlan.SelectedItem = pair;
                        break;
                    }
                }

                tbxCarnetMedico.Text = pacient.CobreturaMedica.NumeroCredencial;
                tbxCalle.Text = pacient.Dir.Calle;
                tbxPiso.Text = pacient.Dir.Piso;
                tbxDepto.Text = pacient.Dir.Departamento;
                tbxCP.Text = pacient.Dir.CodigoPostal;
                id = Convert.ToInt32(pacient.Dir.Provincia);
                foreach (var pair in cbxProvincia.Items)
                {
                    if (((KeyValuePair<int, String>)pair).Key == id)
                    {
                        cbxProvincia.SelectedItem = pair;
                        break;
                    }
                }
                id = Convert.ToInt32(pacient.Dir.Localidad);
                foreach (var pair in cbxLocalidad.Items)
                {
                    if (((KeyValuePair<int, String>)pair).Key == id)
                    {
                        cbxLocalidad.SelectedItem = pair;
                        break;
                    }
                }
            }
            else
            {
                btnLimpiar.Visible = true;
                tbxNombre.ReadOnly = false;
                tbxApellido.ReadOnly = false;
                tbxDni.ReadOnly = false;
                dtpFechaNacimiento.Enabled = true;
                ct.Editar = false;
                reset();
            }
        }
    }
}
