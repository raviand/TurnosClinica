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
    public partial class controlTelefonos : Form
    {
        
        public List<Telefono> telefonos { get; set; }
        PacienteNegocio pn;
        public bool  borro { get; set; }
        /*public controlTelefonos()
        {
            InitializeComponent();
            
        }*/
        public controlTelefonos()
        {
            
            InitializeComponent();
            dgvTelefonos.ReadOnly = true;
            dgvTelefonos.DataSource = telefonos;
        }

        public controlTelefonos(int  id)
        {
            //this.telefonos = telefonos;
            pn = new PacienteNegocio();
            InitializeComponent();
            dgvTelefonos.ReadOnly = true;
            dgvTelefonos.DataSource = pn.listarTelefonos(id);
        }

        private void dgvTelefonos_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {

            try
            {
                if (MessageBox.Show("Desea borrar el registro: " + telefonos[e.RowIndex].Numero, "Eliminar Telefono", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    telefonos.RemoveAt(e.RowIndex);
                    borro = true;
                    this.Close();
                }
                else
                {
                    borro = false;
                }
            }catch(Exception ex)
            {
                MessageBox.Show("Error en ejecucion " + ex.ToString());
            }
            
                
            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            borro = false;
            Close();
        }
    }
}
