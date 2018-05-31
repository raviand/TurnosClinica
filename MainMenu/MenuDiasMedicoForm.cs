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
    
    public partial class MenuDiasMedicoForm : Form
    {
        ProfesionalNegocio pn;
        bool seleccionLunes;
        bool seleccionMartes;
        bool seleccionMiercoles;
        bool seleccionJueves;
        bool seleccionViernes;
        bool seleccionSabados;
        bool seleccionDomingo;
        
        public Dictionary<int, String> Atencion { get; set; }

        public MenuDiasMedicoForm()
        {
            pn = new ProfesionalNegocio();
            Atencion = new Dictionary<int, string>();
            seleccionLunes = false;
            seleccionMartes = false;
            seleccionMiercoles = false;
            seleccionJueves = false;
            seleccionViernes = false;
            seleccionSabados = false;
            seleccionDomingo = false;
            InitializeComponent();

            cbxAtencionLunes.Visible = false;
            cbxAtencionMartes.Visible = false;
            cbxAtencionMiercoles.Visible = false;
            cbxAtencionJueves.Visible = false;
            cbxAtencionViernes.Visible = false;
            cbxAtencionDomingo.Visible = false;
            cbxAtencionSabado.Visible = false;
            
        }
        private void load()
        {
         
            foreach (KeyValuePair<int, String> pair in Atencion)
            {
                switch (pair.Key)
                {
                    case 1:
                        cbxLunes.Checked = true;
                        cbxAtencionLunes.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                    case 2:
                        cbxMartes.Checked = true;
                        cbxAtencionMartes.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                    case 3:
                        cbxMiercoles.Checked = true;
                        cbxAtencionMiercoles.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                    case 4:
                        cbxJueves.Checked = true;
                        cbxAtencionJueves.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                    case 5:
                        cbxViernes.Checked = true;
                        cbxAtencionViernes.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                    case 6:
                        cbxSabado.Checked = true;
                        cbxAtencionSabado.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                    case 7:
                        cbxDomingo.Checked = true;
                        cbxAtencionDomingo.SelectedItem = Convert.ToInt32(pair.Value);
                        break;
                }
            }
        }

        private void MenuDiasMedicoForm_Load(object sender, EventArgs e)
        {
            try
            {
                Dictionary<int, String> horarios;
                horarios = pn.listarHorarios();
                foreach(var pair in horarios)
                {
                    cbxAtencionLunes.Items.Add(pair);
                    cbxAtencionMartes.Items.Add(pair);
                    cbxAtencionMiercoles.Items.Add(pair);
                    cbxAtencionJueves.Items.Add(pair);
                    cbxAtencionViernes.Items.Add(pair);
                    cbxAtencionSabado.Items.Add(pair);
                    cbxAtencionDomingo.Items.Add(pair);
                    cbxAtencionTodos.Items.Add(pair);
                }
                cbxAtencionLunes.DisplayMember = "Value";
                cbxAtencionMartes.DisplayMember = "Value";
                cbxAtencionMiercoles.DisplayMember = "Value";
                cbxAtencionViernes.DisplayMember = "Value";
                cbxAtencionSabado.DisplayMember = "Value";
                cbxAtencionJueves.DisplayMember = "Value";
                cbxAtencionDomingo.DisplayMember = "Value";
                cbxAtencionTodos.DisplayMember = "Value";
                load();
                
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error al cargar Horarios\n" + ex.ToString());
            }
            
        }
        private bool AtencionVisible(ComboBox Atencion, bool seleccion)
        {
            if (seleccion)
            {
                Atencion.Visible = false;
                return seleccion = false;
            }
            else
            {
                Atencion.Visible = true;
                return seleccion = true;
            }
        }
        private void cbxLunes_CheckedChanged(object sender, EventArgs e)
        {
            seleccionLunes = AtencionVisible(cbxAtencionLunes, seleccionLunes);
        }
        private void cbxMartes_CheckedChanged(object sender, EventArgs e)
        {
            seleccionMartes = AtencionVisible(cbxAtencionMartes, seleccionMartes);
        }
        private void cbxMiercoles_CheckedChanged(object sender, EventArgs e)
        {
            seleccionMiercoles = AtencionVisible(cbxAtencionMiercoles, seleccionMiercoles);
        }
        private void cbxJueves_CheckedChanged(object sender, EventArgs e)
        {
            seleccionJueves = AtencionVisible(cbxAtencionJueves, seleccionJueves);
        }
        private void cbxViernes_CheckedChanged(object sender, EventArgs e)
        {
            seleccionViernes = AtencionVisible(cbxAtencionViernes, seleccionViernes);
        }
        private void cbxSabado_CheckedChanged(object sender, EventArgs e)
        {
            seleccionSabados = AtencionVisible(cbxAtencionSabado, seleccionSabados);
        }
        private void cbxDomingo_CheckedChanged(object sender, EventArgs e)
        {
            seleccionDomingo = AtencionVisible(cbxAtencionDomingo, seleccionDomingo);
        }
        private void cbxAtencionTodos_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbxAtencionLunes.SelectedIndex = cbxAtencionTodos.SelectedIndex;
            cbxAtencionMartes.SelectedIndex = cbxAtencionTodos.SelectedIndex;
            cbxAtencionMiercoles.SelectedIndex = cbxAtencionTodos.SelectedIndex;
            cbxAtencionJueves.SelectedIndex = cbxAtencionTodos.SelectedIndex;
            cbxAtencionViernes.SelectedIndex = cbxAtencionTodos.SelectedIndex;
            cbxAtencionSabado.SelectedIndex = cbxAtencionTodos.SelectedIndex;
            cbxAtencionDomingo.SelectedIndex = cbxAtencionTodos.SelectedIndex;
        }
        private void btnSelectAll_Click(object sender, EventArgs e)
        {
            cbxLunes.Checked = true;
            cbxMartes.Checked = true;
            cbxMiercoles.Checked = true;
            cbxJueves.Checked = true;
            cbxViernes.Checked = true;
            cbxSabado.Checked = true;
            cbxDomingo.Checked = true;
        }
        private void btnUnselectAll_Click(object sender, EventArgs e)
        {
            cbxLunes.Checked = false;
            cbxMartes.Checked = false;
            cbxMiercoles.Checked = false;
            cbxJueves.Checked = false;
            cbxViernes.Checked = false;
            cbxSabado.Checked = false;
            cbxDomingo.Checked = false;
        }
        private bool puedeGuardar()
        {
            bool puedeGuardar = true;
            if (cbxLunes.Checked) if (cbxAtencionLunes.SelectedIndex == -1 )puedeGuardar = false;
            if (cbxMartes.Checked) if (cbxAtencionMartes.SelectedIndex == -1) puedeGuardar = false;
            if (cbxMiercoles.Checked) if (cbxAtencionMiercoles.SelectedIndex == -1) puedeGuardar = false;
            if (cbxJueves.Checked) if (cbxAtencionJueves.SelectedIndex == -1) puedeGuardar = false;
            if (cbxViernes.Checked) if (cbxAtencionViernes.SelectedIndex == -1) puedeGuardar = false;
            if (cbxSabado.Checked) if (cbxAtencionSabado.SelectedIndex == -1) puedeGuardar = false;
            if (cbxDomingo.Checked) if (cbxAtencionDomingo.SelectedIndex == -1) puedeGuardar = false;

            if (!cbxLunes.Checked && 
                !cbxMartes.Checked && 
                !cbxMiercoles.Checked && 
                !cbxJueves.Checked && 
                !cbxViernes.Checked && 
                !cbxSabado.Checked && 
                !cbxDomingo.Checked )
                puedeGuardar = false;

            return puedeGuardar;
        }
        private void btnAceptar_Click(object sender, EventArgs e)
        {
            if (puedeGuardar())
            {
                if(Atencion.Count != 0)
                {
                    foreach (KeyValuePair<int, String> pair in Atencion)
                    {
                        if (cbxLunes.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(1, traerKey(cbxAtencionLunes));
                        if (cbxMartes.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(2, traerKey(cbxAtencionMartes));
                        if (cbxMiercoles.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(3, traerKey(cbxAtencionMiercoles));
                        if (cbxJueves.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(4, traerKey(cbxAtencionJueves));
                        if (cbxViernes.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(5, traerKey(cbxAtencionViernes));
                        if (cbxSabado.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(6, traerKey(cbxAtencionSabado));
                        if (cbxDomingo.Checked) if (!Atencion.ContainsKey(pair.Key)) Atencion.Add(7, traerKey(cbxAtencionDomingo));
                    }
                }
                else
                {
                    
                    if (cbxLunes.Checked)       Atencion.Add(1, traerKey(cbxAtencionLunes));
                    if (cbxMartes.Checked)      Atencion.Add(2, traerKey(cbxAtencionMartes));
                    if (cbxMiercoles.Checked)   Atencion.Add(3, traerKey(cbxAtencionMiercoles));
                    if (cbxJueves.Checked)      Atencion.Add(4, traerKey(cbxAtencionJueves));
                    if (cbxViernes.Checked)     Atencion.Add(5, traerKey(cbxAtencionViernes));
                    if (cbxSabado.Checked)      Atencion.Add(6, traerKey(cbxAtencionSabado));
                    if (cbxDomingo.Checked)     Atencion.Add(7, traerKey(cbxAtencionDomingo));
                    
                }
               


                Close();
            }
            else
            {
                MessageBox.Show("No Puede Guardar");
            }
        }
        private String traerKey(ComboBox comboBox)
        {
            return (((KeyValuePair<int, String>)comboBox.SelectedItem).Key).ToString();
        }
        private void btnSalir_Click(object sender, EventArgs e)
        {
            if( MessageBox.Show("Esta seguro que desea salir?, no se guardaran los cambios", "Advertencia", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                Close();
            }
        }
    }
}
