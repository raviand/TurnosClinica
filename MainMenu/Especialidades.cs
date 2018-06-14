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
    public partial class Especialidades : Form
    {
        ProfesionalNegocio pn;
        Dictionary<int, String> especialidades;
        Especialidad especialidad;
        public Especialidades()
        {
            
            pn = new ProfesionalNegocio();
            especialidades = new Dictionary<int, string>();
            InitializeComponent();
        }

        private void Especialidades_Load(object sender, EventArgs e)
        {
            cargardgv();
            
        }
        private void cargardgv()
        {
            especialidades = pn.getEspecialidades();
            List<Especialidad> especialidads = new List<Especialidad>();

            foreach (KeyValuePair<int, String> pair in especialidades)
            {
                especialidad = new Especialidad();
                especialidad.id = pair.Key;
                especialidad.especialidad = pair.Value;
                especialidads.Add(especialidad);
            }
            dgvEspecialidades.DataSource = especialidads;

        }

        private bool esta()
        {
            foreach (Especialidad item in (List<Especialidad>)dgvEspecialidades.DataSource)
            {
                if(item.especialidad.CompareTo(tbxEspecialidad.Text.Trim()) == 0)
                {
                    return true;
                }
            }
            return false;
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            if(tbxEspecialidad.Text.Trim().CompareTo("") != 0 && !esta())
            { 
                if(MessageBox.Show($"Desea agregar al listado de Especialidades: {tbxEspecialidad.Text.Trim()}?", "Aviso",MessageBoxButtons.YesNo, MessageBoxIcon.Question  ) == DialogResult.Yes)
                {
                    pn.cargarEspecialidad(tbxEspecialidad.Text.Trim());
                    cargardgv();
                    tbxEspecialidad.Text = "";
                }
            }
            else
            {
                MessageBox.Show("La especialidad ingresada no es valida");
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            int id = (( Especialidad ) dgvEspecialidades.CurrentRow.DataBoundItem ).id;
            String nombre = ((Especialidad)dgvEspecialidades.CurrentRow.DataBoundItem).especialidad;
            if (MessageBox.Show($"Desea eliminar del listado de Especialidades: {nombre}?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                pn.eliminarEspecialidad(id);
                cargardgv();
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
