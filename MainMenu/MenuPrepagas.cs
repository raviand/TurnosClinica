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
        List<ServicioMedico> iserviciosMedicos;
        public MenuPrepagas(List<ServicioMedico> serviciosMedicos )
        {
            InitializeComponent();
            load(serviciosMedicos);
        }


        public void load(List<ServicioMedico> serviciosMedicos)
        {
            if (serviciosMedicos.Count > 0)
            {
                foreach (var pair in serviciosMedicos)
                {
                    lbxEleccionesCobertura.Items.Add(pair);
                }
            }
            iserviciosMedicos = serviciosMedicos;
            gn = new GeneralNegocio();
            cobertura = new Dictionary<int, string>();
            
            cobertura = gn.getCoberturaMedica();
            foreach (var pair in cobertura)
                lbxOpcionesCobertura.Items.Add(pair);
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
            int val = iserviciosMedicos.Count;
            //Revisar porque el toString devuelve "no especifica"
            while(lbxEleccionesCobertura.Items.Count > 0)
            {
                foreach(ServicioMedico pair in lbxEleccionesCobertura.Items)
                {
                    ServicioMedico nuevo = new ServicioMedico();
                    nuevo.Nombre = pair.Nombre;
                    lbxEleccionesCobertura.SelectedIndex = 0;
                    iserviciosMedicos.Add(nuevo);
                    lbxEleccionesCobertura.Items.RemoveAt(0);
                }
                
            }
            Close();
        }
    }
}
