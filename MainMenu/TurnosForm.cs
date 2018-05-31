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
        public TurnosForm()
        {
            tn = new TurnoNegocio();
            InitializeComponent();
            dgvTurnos.DataSource = tn.listarTurnos();
            dgvTurnos.Columns["FechaSolicitud"].Visible = false;
            dgvTurnos.Columns["idTurno"].Visible = false;
            dgvTurnos.Columns["cancela"].Visible = false;

        }
    }
}
