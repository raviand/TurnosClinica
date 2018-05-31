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
    public partial class FormEspecialidades : Form
    {

        ProfesionalNegocio pn;
        Dictionary<int, String> Especialidades;
        public Dictionary<int , String> MedicoEspecialidades { get; set; }


        public FormEspecialidades()
        {
            InitializeComponent();
            load();
        }

        public void load()
        {
            Dictionary<int, String> listaEspecialidades = new Dictionary<int, String>();
            pn = new ProfesionalNegocio();
            listaEspecialidades = pn.getEspecialidades();

            if (MedicoEspecialidades != null)
            {
                foreach (var pair in listaEspecialidades)
                {
                    foreach (var pair2 in MedicoEspecialidades)
                        if (pair2.Key == pair.Key)
                            lbxEleccionesEspecialidades.Items.Add(pair);
                }
            }

            foreach (var pair in listaEspecialidades)
                lbxOpcionesEspecialidades.Items.Add(pair);

            lbxOpcionesEspecialidades.DisplayMember = "Value";
            lbxEleccionesEspecialidades.DisplayMember = "Value";

        }

        private void btnToRight_Click_1(object sender, EventArgs e)
        {
            foreach (var pair in lbxOpcionesEspecialidades.SelectedItems)
            {
                if (!lbxEleccionesEspecialidades.Items.Contains(pair))
                    lbxEleccionesEspecialidades.Items.Add(pair);
            }
        }

        private void btnDesSeleccion_Click_1(object sender, EventArgs e)
        {
            while (lbxEleccionesEspecialidades.SelectedIndex != -1)
                lbxEleccionesEspecialidades.Items.RemoveAt(lbxEleccionesEspecialidades.SelectedIndex);
            
        }

        private void btnClean_Click_1(object sender, EventArgs e)
        {
            while (lbxEleccionesEspecialidades.Items.Count > 0)
            {
                lbxEleccionesEspecialidades.Items.RemoveAt(0);
            }
        }

        private void btnAceptar_Click_1(object sender, EventArgs e)
        {
            try
            {
                if(MedicoEspecialidades.Count != 0)
                {
                    foreach (KeyValuePair<int, String> pair in lbxEleccionesEspecialidades.Items)
                    {
                        foreach (KeyValuePair<int, String> pair2 in MedicoEspecialidades)
                            if (pair2.Key != pair.Key)
                                MedicoEspecialidades.Add(pair.Key, Convert.ToString(pair.Value));
                    }
                }
                else
                {
                    foreach (KeyValuePair<int, String> pair in lbxEleccionesEspecialidades.Items)
                    {
                        MedicoEspecialidades.Add(pair.Key, Convert.ToString(pair.Value));
                    }
                }
                
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

        private void btnSalir_Click_1(object sender, EventArgs e)
        {
            if (lbxEleccionesEspecialidades.Items.Count > 0)
            {
                if (MessageBox.Show("Esta seguro que desea salir?, no se guardaran los cambios.", "Advertencia", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    while (lbxEleccionesEspecialidades.Items.Count > 0)
                        lbxEleccionesEspecialidades.Items.RemoveAt(0);
                    Close();
                }
            }
            else
            {
                Close();
            }
        }
    }
}
