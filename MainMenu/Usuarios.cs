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
        public Profesional profesional { get; set; }
        List<User> usuarios;
        List<Profesional> profesionales;
        
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
               if(item.tipoPermiso != 'P')
                    tbxPermiso.Items.Add(new KeyValuePair<char, String> (item.tipoPermiso, item.Nombre));
            }
            profesionales = pn.listarProfesionales();
            foreach (Profesional item in profesionales)
            {
                cbxEspecialista.Items.Add($"{item.IdProfesional} - {item.Apellido}, {item.Nombre}");
            }

            
            dgvUsuarios.DataSource = un.listarUsuarios();
            //user.

            dgvUsuarios.Columns["idPermiso"].Visible = false;
            dgvUsuarios.Columns["idProfesional"].Visible = false;
            dgvUsuarios.Columns["idUser"].Visible = false;
            dgvUsuarios.Columns["Pass"].Visible = false;
            //dgvUsuarios.Columns["idPermiso"].Visible = false;
            //dgvUsuarios.Columns["idPermiso"].Visible = false;
        }

        private void chkEspecialista_CheckedChanged(object sender, EventArgs e)
        {
            if (chkEspecialista.Checked)
            {
                cbxEspecialista.Visible = true;
                tbxPermiso.Visible = false;
            }
            else
            {
                cbxEspecialista.Visible = false;
                tbxPermiso.Visible = true;
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            List<Permisos> permisos = un.listarPermisos();
            user = new User();
            if (chkEspecialista.Checked)
            {
                if(cbxEspecialista.SelectedIndex != -1)
                {
                    user.idProfesional = Int32.Parse(((String)cbxEspecialista.SelectedItem).Substring(0, 1));
                    user.TipoPermiso = 'P';
                    user.NombrePermiso = "Profesional";
                    user.idPermiso = 8;
                }
                else
                {
                    MessageBox.Show("Debe seleccionar un profesional");
                }
            }
            else
            {
                user.idProfesional = 0;
                foreach (Permisos item in permisos)
                {
                    if( ((KeyValuePair<char, String>)tbxPermiso.SelectedItem).Key == item.tipoPermiso){
                        user.idPermiso = item.idTipo;
                        user.TipoPermiso = item.tipoPermiso;
                        user.NombrePermiso = item.Nombre;
                    }
                }
            }
            if(tbxUser.Text.Trim().CompareTo("")!=0 && tbxPass.Text.Trim().CompareTo("") != 0)
            {
                user.Usuario = tbxUser.Text.Trim();
                user.Pass = tbxPass.Text.Trim();
                // verificar que no se repita el usuario
                un.user = user;
                un.cargarUsuario();

            }
            else
            {
                MessageBox.Show("Faltan campos por completar");
            }


            cbxEspecialista.SelectedIndex = -1;
            tbxPermiso.SelectedIndex = -1;
            tbxPass.Text = "";
            tbxUser.Text = "";
            dgvUsuarios.DataSource = un.listarUsuarios();


        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            user = (User)dgvUsuarios.CurrentRow.DataBoundItem;
            if(MessageBox.Show($"Esta seguro que desea eliminar al usuario {user.Usuario}?", "Aviso", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                un.user = user;
                if (un.eliminarUsuario())
                {
                    MessageBox.Show("El usuario se elimino con exito");
                    dgvUsuarios.DataSource = un.listarUsuarios();
                }
            }
        }
    }
}
