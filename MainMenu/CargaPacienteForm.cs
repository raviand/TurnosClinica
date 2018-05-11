﻿using System;
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
//Para limitar el rango de fechas para turno la carga de turnos
//https://stackoverflow.com/questions/8353801/limiting-the-dates-within-a-c-sharp-win-form-datetimepicker?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
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
        int contTel;

        public CargaPacienteForm()
        {
            load();
        }

        private void load()
        {
            ver = new Verificacion();
            contTel = 0;
            paciente = new Paciente();
            paciente.Telefonos = new List<Telefono>();
            paciente.Dir = new Direccion();
            paciente.CobreturaMedica = new ServicioMedico();
            InitializeComponent();
            gn = new GeneralNegocio();
            pn = new PacienteNegocio();
            try
            {
                tipoTel = gn.getTiposTelefonos();
                foreach (var pair in tipoTel)
                {
                    cbxTipoTel.Items.Add(pair);

                }
                
                provincia = gn.getProvincia();
                foreach(var pair in provincia)
                {
                    cbxProvincia.Items.Add(pair);
                }
               
                coberturaMedica = gn.getCoberturaMedica();
                foreach (var pair in coberturaMedica)
                {
                    cbxCoberturaMedica.Items.Add(pair);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error en carga de Items");
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
            if (!tbxTelefono.Text.Equals(""))
            {
                if (cbxTipoTel.Items.Count > 0)
                {
                    telefono.Numero = tbxTelefono.Text;
                    telefono.Tipo = cbxTipoTel.GetItemText(cbxTipoTel.SelectedItem);
                    if (ver.existeTelefono(telefono.Numero, paciente))
                    {
                        MessageBox.Show("El telefono: " + telefono.Numero + " Ya se encuentra registrado");
                    }
                    else
                    {
                        paciente.Telefonos.Add(telefono);
                        MessageBox.Show("Se cargo: " + paciente.Telefonos[contTel].Numero + " - " + paciente.Telefonos[contTel].Tipo);
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
            bool guardado = false;
            if (puedeGuardar())
            {
                MessageBox.Show("Se puede guardar");
                int res;
                try
                {
                    paciente.Nombre = tbxNombre.Text;
                    paciente.Apellido = tbxApellido.Text;
                    paciente.Dni = tbxDni.Text;
                    paciente.Mail = tbxMail.Text;
                    paciente.FechaNac = dtpFechaNacimiento.Value;
                    paciente.FechaIngreso = DateTime.Today;
                    //if(tbxCarnetMedico.Text.CompareTo("") != 0)
                        paciente.CobreturaMedica.NumeroCredencial = tbxCarnetMedico.Text;
                    paciente.CobreturaMedica.Nombre = Convert.ToString(((KeyValuePair<int, String>) cbxCoberturaMedica.SelectedItem).Value);
                    paciente.CobreturaMedica.Plan = Convert.ToString(((KeyValuePair<int, String>)cbxPlan.SelectedItem).Key);
                    paciente.Dir.Calle = tbxCalle.Text;
                    paciente.Dir.Localidad = Convert.ToString( ( (KeyValuePair<int, String>) cbxLocalidad.SelectedItem ).Key );
                    if (tbxPiso.Text.CompareTo("") != 0) paciente.Dir.Piso = tbxPiso.Text;
                    if (tbxDepto.Text.CompareTo("") != 0) paciente.Dir.Departamento = tbxDepto.Text;
                    if (tbxCP.Text.CompareTo("") != 0) paciente.Dir.CodigoPostal = tbxCP.Text;
                    MessageBox.Show(paciente.ToString());
                    res = pn.cargarPaciente(paciente);
                    MessageBox.Show("registros modificados: " + res);
                    


                        reset();
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
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            reset();
            
        }
    }

    

    }
