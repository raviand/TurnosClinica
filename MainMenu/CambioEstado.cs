﻿using System;
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
using System.Data.SqlClient;

namespace MainMenu
{
    public partial class CambioEstado : Form
    {
        public Turno turno { get; set; }
        TurnoNegocio tn;
        List<String> estados;
        public CambioEstado()
        {
            tn = new TurnoNegocio();
            turno = new Turno();
            InitializeComponent();
            estados = tn.listarEstado();
            foreach (String pair in estados)
                cbxEstado.Items.Add(pair);          
        }

        private void CambioEstado_Load(object sender, EventArgs e)
        {
            tbxEstadoActaul.Text = turno.Estado;
            rtbComentario.Visible = false;
            lblEstado.Visible = false;
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Esta seguro que desea salir?\nNo se guardaran los cambios efectuados", "Advertencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Close();
            }
        }

        private void cbxEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(((String)cbxEstado.SelectedItem).CompareTo("ATENDIDO") == 0)
            {
                rtbComentario.Visible = true;
                lblEstado.Visible = true;
            }
            else
            {
                rtbComentario.Visible = false;
                lblEstado.Visible = false;
            }
        }


    }
}
