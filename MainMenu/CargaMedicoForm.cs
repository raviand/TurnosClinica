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
using System.Data.SqlClient;

namespace MainMenu
{
    public partial class CargaMedicoForm : Form
    {

        Dictionary<int, String> tipoTel;
        Dictionary<int, String> provincia;
        Dictionary<int, String> coberturaMedica;
        Dictionary<int, String> planMedico;
        Dictionary<int, String> localidad;
        Verificacion ver;
        ProfesionalNegocio pn;
        GeneralNegocio gn;
        Profesional profesional;
        MenuDiasMedicoForm FormMdm;
        MenuPrepagas FormMp;

        int contTel;


        public CargaMedicoForm()
        {
            load();
            FormMdm = new MenuDiasMedicoForm();
            FormMp = new MenuPrepagas();
        }

        private void load()
        {
            ver = new Verificacion();
            contTel = 0;
            profesional = new Profesional();
            profesional.Telefonos = new List<Telefono>();
            profesional.Dir = new Direccion();
            profesional.Especialidades = new List<String>();
            profesional.Atencion = new Dictionary<int, string>();
            profesional.ServiciosHabilitados = new List<ServicioMedico>();
            InitializeComponent();
            gn = new GeneralNegocio();
            pn = new ProfesionalNegocio();
            try
            {
                tipoTel = gn.getTiposTelefonos();
                foreach (var pair in tipoTel)
                {
                    cbxTipoTel.Items.Add(pair);
                }

                provincia = gn.getProvincia();
                foreach (var pair in provincia)
                {
                    cbxProvincia.Items.Add(pair);
                }

                
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error en carga de Items");
            }

            dtpFechaNacimiento.MaxDate = DateTime.Today;
            dtpFechaNacimiento.MinDate = DateTime.Today.AddYears(-100);
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void cbxProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbxLocalidad.ResetText();
            cbxLocalidad.Items.Clear();


            try
            {

                if (cbxProvincia.SelectedIndex != -1)
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
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al obtener localidad");
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

        private void tbxDni_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        private void tbxTelefono_KeyPress(object sender, KeyPressEventArgs e)
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

        private void tbxCP_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (testNumeros(e))
            {
                MessageBox.Show("Ingrese solo valores numericos");
            }
        }

        public bool puedeGuardar()
        {
            bool puede = true;
            if (tbxNombre.Text.Trim().CompareTo("") == 0)
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
            if (dtpFechaNacimiento.Value.ToShortDateString().CompareTo(DateTime.Today.ToShortDateString()) == 0)
            {
                puede = false;
                MessageBox.Show("Ingrese fecha de nacimiento");
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
            if(!rbtSi.Checked && !rbtNo.Checked)
            {
                puede = false;
                MessageBox.Show("Debe seleccionar si atiende a domicilio");
            }
            if(FormMdm.Atencion.Count == 0)
            {
                puede = false;
                MessageBox.Show("Debe Registrar dias de Atencion");
            }
            
            
            //controlar que cargue los horarios y las prepagas.

            return puede;
        }
        
        private void btnAdd_Click(object sender, EventArgs e)
        {
            Telefono telefono = new Telefono();
            if (!tbxTelefono.Text.Equals("") && cbxTipoTel.SelectedIndex != -1)
            {
                if (cbxTipoTel.Items.Count > 0)
                {
                    telefono.Numero = tbxTelefono.Text;
                    telefono.Tipo = cbxTipoTel.GetItemText(cbxTipoTel.SelectedItem);
                    if (ver.existeTelefono(telefono.Numero, profesional.Telefonos))
                    {
                        MessageBox.Show("El telefono: " + telefono.Numero + " Ya se encuentra registrado");
                    }
                    else
                    {
                        profesional.Telefonos.Add(telefono);
                        MessageBox.Show("Se cargo: " + profesional.Telefonos[contTel].Numero + " - " + profesional.Telefonos[contTel].Tipo);
                        contTel++;
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

        private void btnVerTelefonos_Click(object sender, EventArgs e)
        {
            new controlTelefonos(profesional.Telefonos).ShowDialog();
        }

        public void reset()
        {
            tbxApellido.Clear();
            tbxCalle.Clear();
            tbxCP.Clear();
            tbxDepto.Clear();
            tbxDni.Clear();
            tbxMail.Clear();
            tbxNombre.Clear();
            tbxPiso.Clear();
            tbxTelefono.Clear();
            dtpFechaNacimiento.Value = DateTime.Today;
            cbxLocalidad.SelectedIndex = -1;
            cbxProvincia.SelectedIndex = -1;
            cbxTipoTel.SelectedIndex = -1;
            profesional.Telefonos = new List<Telefono>();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            reset();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            bool guardado = false;
            if (puedeGuardar())
            {
                MessageBox.Show("Se puede guardar");
                int res;
                try
                {
                    profesional.Nombre = tbxNombre.Text;
                    profesional.Apellido = tbxApellido.Text;
                    profesional.Dni = tbxDni.Text;
                    profesional.Mail = tbxMail.Text;
                    profesional.FechaNac = dtpFechaNacimiento.Value;
                    profesional.FechaIngreso = DateTime.Today;
                    profesional.Atencion = FormMdm.Atencion;
                    //Falta cargar coberturas , si hace domicilios


                    profesional.Dir.Calle = tbxCalle.Text;
                    profesional.Dir.Localidad = Convert.ToString(((KeyValuePair<int, String>)cbxLocalidad.SelectedItem).Key);
                    if (tbxPiso.Text.CompareTo("") != 0) profesional.Dir.Piso = tbxPiso.Text;
                    if (tbxDepto.Text.CompareTo("") != 0) profesional.Dir.Departamento = tbxDepto.Text;
                    if (tbxCP.Text.CompareTo("") != 0) profesional.Dir.CodigoPostal = tbxCP.Text;
                    MessageBox.Show(profesional.ToString());
                    pn.setPaciente(profesional);
                    res = pn.cargarPaciente(profesional);
                    MessageBox.Show("registros modificados: " + res);

                    reset();
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627)
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

        private void button2_Click(object sender, EventArgs e)
        {
            FormMp.iserviciosMedicos = profesional.ServiciosHabilitados;
            FormMp.ShowDialog();
        }

        private void btnCargarDias_Click(object sender, EventArgs e)
        {
            new MenuDiasMedicoForm().ShowDialog();
        }
    }
}
