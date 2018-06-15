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

namespace MainMenu
{
    public partial class Usuarios : Form
    {
        UserNegocios un;
        ProfesionalNegocio pn;
        public User user { get; set; }
        List<User> usuarios;
        
        public Usuarios()
        {
            pn = new ProfesionalNegocio();
            un = new UserNegocios();
            InitializeComponent();
            cbxEspecialista.Visible = false;
        }

        private void dgvUsuarios_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Usuarios_Load(object sender, EventArgs e)
        {
            foreach (Permisos item in un.listarPermisos())
            {
               // tbxPermiso.Items.Add($"{item.tipoPermiso} - {item.Nombre}");
                tbxPermiso.Items.Add(new KeyValuePair<char, String> (item.tipoPermiso, item.Nombre));
            }

            dgvUsuarios.DataSource = un.listarUsuarios();
        }

        private void chkEspecialista_CheckedChanged(object sender, EventArgs e)
        {
            if (chkEspecialista.Checked)
            {
                cbxEspecialista.Visible = true;
            }
            else
            {
                cbxEspecialista.Visible = false;
            }
        }



    }
}
