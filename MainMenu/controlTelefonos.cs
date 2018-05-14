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
        List<Telefono> telefonos;
        public controlTelefonos()
        {
            InitializeComponent();
            
        }
        public controlTelefonos(List<Telefono> telefonos)
        {
            this.telefonos = telefonos;
            InitializeComponent();
            dgvTelefonos.ReadOnly = true;
            dgvTelefonos.DataSource = telefonos;
        }

        private void dgvTelefonos_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {

            try
            {
                if (MessageBox.Show("Desea borrar el registro: " + telefonos[e.RowIndex].Numero, "Eliminar Telefono", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    telefonos.RemoveAt(e.RowIndex);
                    this.Close();


                }
            }catch(Exception ex)
            {
                MessageBox.Show("Error en ejecucion " + ex.ToString());
            }
            
                
            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
