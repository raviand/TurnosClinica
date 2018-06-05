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
        GeneralNegocio gn;
        public bool  borro { get; set; }
        public bool Editar { get; set; }
        public int id { get; set; }
        public controlTelefonos()
        {
            
            InitializeComponent();
            dgvTelefonos.ReadOnly = true;
            pn = new PacienteNegocio();
            gn = new GeneralNegocio();
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
                Telefono telefono = (Telefono)dgvTelefonos.CurrentRow.DataBoundItem;
                if (MessageBox.Show("Desea borrar el registro: " + telefono.Numero, "Eliminar Telefono", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    if (Editar)
                    {
                        if (gn.eliminarTelefonoPaciente(telefono) > 0)
                        {
                            telefonos.Remove(telefono);
                        }
                    }
                    else
                    {
                        telefonos.Remove(telefono);
                    }
                        
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

        private void controlTelefonos_Load(object sender, EventArgs e)
        {
            if (Editar)
            {
                dgvTelefonos.DataSource = pn.listarTelefonos(id);
            }
            else
            {
                dgvTelefonos.DataSource = telefonos;
            }
        }
    }
}
