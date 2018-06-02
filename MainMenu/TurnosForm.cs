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
    public partial class TurnosForm : Form
    {
        TurnoNegocio tn;
        nuevoTurno nt;
        public TurnosForm()
        {
            nt = new nuevoTurno();
            tn = new TurnoNegocio();
            InitializeComponent();
            dgvTurnos.DataSource = tn.listarTurnos();
            dgvTurnos.Columns["FechaSolicitud"].Visible = false;
            dgvTurnos.Columns["idTurno"].Visible = false;
            dgvTurnos.Columns["cancela"].Visible = false;
            dgvTurnos.Columns["Estado"].DisplayIndex = 8;
            //dgvTurnos.cell
        }

        private void btnNuevoTurno_Click(object sender, EventArgs e)
        {
            nt.Turnos = (List<Turno>)dgvTurnos.DataSource;
            nt.ShowDialog();
            nt = new nuevoTurno();
            dgvTurnos.DataSource = tn.listarTurnos();
        }
    }
}
