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
    public partial class MenuPrepagas : Form
    {
        GeneralNegocio gn;
        Dictionary<int, String> cobertura;
        public List<ServicioMedico> iserviciosMedicos { get; set; }

        public MenuPrepagas()
        {
            InitializeComponent();
            load();
        }

        public void load()
        {
            Dictionary<int, String> listaServicios = new Dictionary<int, String>();
            gn = new GeneralNegocio();
            listaServicios = gn.getCoberturaMedica();
            listaServicios.Remove(5);
            if (iserviciosMedicos != null)
            {
                foreach (var pair in listaServicios)
                {
                    foreach (ServicioMedico pair2 in iserviciosMedicos)
                        if (pair2.Nombre.CompareTo(Convert.ToString(pair.Key)) == 0)
                            lbxEleccionesCobertura.Items.Add(pair);
                }
            }

            cobertura = new Dictionary<int, string>();
            
            cobertura = listaServicios;
            foreach (var pair in cobertura)
                lbxOpcionesCobertura.Items.Add(pair);

            lbxEleccionesCobertura.DisplayMember = "Value";
            lbxOpcionesCobertura.DisplayMember = "Value";
        }

        private void btnToRight_Click(object sender, EventArgs e)
        {
            foreach (var pair in lbxOpcionesCobertura.SelectedItems)
            {
                if(!lbxEleccionesCobertura.Items.Contains(pair))
                    lbxEleccionesCobertura.Items.Add(pair);
            }
        }

        private void btnDesSeleccion_Click(object sender, EventArgs e)
        {
            while(lbxEleccionesCobertura.SelectedIndex != -1)
            {
                lbxEleccionesCobertura.Items.RemoveAt(lbxEleccionesCobertura.SelectedIndex);
            }
        }

        private void btnClean_Click(object sender, EventArgs e)
        {
            while (lbxEleccionesCobertura.Items.Count > 0)
            {
                lbxEleccionesCobertura.Items.RemoveAt(0);
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            if (lbxEleccionesCobertura.Items.Count > 0)
            {
                if(MessageBox.Show("Esta seguro que desea salir?, no se guardaran los cambios.", "Advertencia", MessageBoxButtons.YesNo) == DialogResult.Yes)
                    {
                        Close();
                    }
            }
            else
            {
                Close();
            }
            
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                    foreach (var pair in lbxEleccionesCobertura.Items)
                    {
                        ServicioMedico nuevo = new ServicioMedico();
                        nuevo.Nombre = Convert.ToString(((KeyValuePair<int, String>)pair).Key);
                        iserviciosMedicos.Add(nuevo);
                    }

                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error en la carga de prepagas: \n" + ex.ToString());
            }
            finally
            {
                Close();
            }
        }

    }
}
