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
    public partial class CoberturaMedica : Form
    {
        GeneralNegocio gn;
        Dictionary<int, String> planes;
        Dictionary<int, String> servicios;
        ServicioMedico servicioMedico;
        List<ServicioMedico> serviciosMedicos;
        public CoberturaMedica()
        {
            gn = new GeneralNegocio();
            InitializeComponent();
        }

        private void CoberturaMedica_Load(object sender, EventArgs e)
        {
            cargaDgv();
        }

        private void cargaDgv()
        {
            cbxServicioSalud.Items.Clear();
            servicios = gn.getCoberturaMedica();
            serviciosMedicos = new List<ServicioMedico>();
            foreach (var item in servicios)
            {
                cbxServicioSalud.Items.Add(item);
            }

           // cbxServicioSalud.DataSource = servicios;
            cbxServicioSalud.DisplayMember = "Value";
            foreach (KeyValuePair<int, String> pair in servicios)
            {
                planes = gn.getPlanMedico(pair.Key);
                foreach (KeyValuePair<int, String> item in planes)
                {
                    servicioMedico = new ServicioMedico();
                    servicioMedico.idServicio = pair.Key;
                    servicioMedico.idPlan = item.Key;
                    servicioMedico.Nombre = pair.Value;
                    servicioMedico.Plan = item.Value;
                    serviciosMedicos.Add(servicioMedico);
                }
            }
            dgvPlanes.DataSource = serviciosMedicos;
            dgvPlanes.Columns["NumeroCredencial"].Visible = false;
            dgvPlanes.Columns["idServicio"].Visible = false;
            dgvPlanes.Columns["idPlan"].Visible = false;
            tbxNuevoPlan.Text = "";
            tbxServicio.Text = "";
            cbxServicioSalud.SelectedIndex = -1;
        }

        private bool estaServicio()
        {
            foreach(ServicioMedico pair in serviciosMedicos)
            {
                if(tbxServicio.Text.Trim().CompareTo(pair.Nombre) == 0)
                {
                    return true;
                }
            }
            return false;
        }

        private bool estaPlan()
        {
            foreach (ServicioMedico pair in serviciosMedicos)
            {
                if (tbxNuevoPlan.Text.Trim().CompareTo(pair.Plan) == 0)
                {
                    return true;
                }
            }
            return false;
        }

        private void btnNuevoServicio_Click(object sender, EventArgs e)
        {
            
            if(tbxServicio.Text.Trim().CompareTo("") != 0 && !estaServicio())
            {
                if(MessageBox.Show($"Esta seguro que desea registrar el nuevo servicio medico: {tbxServicio.Text.Trim()}?", "Advertencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    gn.agregarServicioMedico(tbxServicio.Text.Trim());
                    cargaDgv();
                }
            }
            else
            {
                MessageBox.Show("No puede registrar el valor ingresado", "Advertencia");
            }
        }

        private void btnNuevoPlan_Click(object sender, EventArgs e)
        {
            int id = ((KeyValuePair<int, String>)cbxServicioSalud.SelectedItem).Key;
            String newPlan = tbxNuevoPlan.Text.Trim();
            if (cbxServicioSalud.SelectedIndex != -1 && newPlan.CompareTo("") != 0 && !estaPlan())
            {
                if (MessageBox.Show($"Esta seguro que desea registrar el nuevo Plan medico: {newPlan}?", "Advertencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    gn.agregarPlan(newPlan, id);
                    cargaDgv();
                }
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            servicioMedico = (ServicioMedico) dgvPlanes.CurrentRow.DataBoundItem;
            int cont = 0;
            foreach (ServicioMedico item in (List<ServicioMedico>)dgvPlanes.DataSource)
            {
                if(servicioMedico.idServicio == item.idServicio)
                {
                    cont++;
                }
            }
            if (MessageBox.Show($"Esta seguro que desea eliminar el Plan medico: {servicioMedico.Plan}?", "Advertencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (cont == 1)
                {
                    gn.eliminarPlan(servicioMedico.idPlan);
                    gn.eliminarServicio(servicioMedico.idServicio);
                }
                else
                {
                    gn.eliminarPlan(servicioMedico.idPlan);
                }
                cargaDgv();
            }

        }
    }
}
