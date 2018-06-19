﻿namespace MainMenu
{
    partial class TurnosForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TurnosForm));
            this.dgvTurnos = new System.Windows.Forms.DataGridView();
            this.btnNuevoTurno = new System.Windows.Forms.Button();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.cbxEstados = new System.Windows.Forms.ComboBox();
            this.lblEstados = new System.Windows.Forms.Label();
            this.cbxEspecialidades = new System.Windows.Forms.ComboBox();
            this.lblEspecialidad = new System.Windows.Forms.Label();
            this.cbxProfesional = new System.Windows.Forms.ComboBox();
            this.lblProfesional = new System.Windows.Forms.Label();
            this.tbxPaciente = new System.Windows.Forms.TextBox();
            this.lblPaciente = new System.Windows.Forms.Label();
            this.btnBuscarPaciente = new System.Windows.Forms.Button();
            this.lblMesAntes = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cbxMesAnterior = new System.Windows.Forms.ComboBox();
            this.cbxMesPosterior = new System.Windows.Forms.ComboBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.configuracionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.especialidadesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.serviciosMedicosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.usuariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.salirToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nuevoPacienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nuevoProfesionalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.buscarPacienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.buscarProfesionalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ayudaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.acercaDeTurnosNackToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnCambioEstado = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnos)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvTurnos
            // 
            this.dgvTurnos.AllowUserToAddRows = false;
            this.dgvTurnos.AllowUserToDeleteRows = false;
            this.dgvTurnos.AllowUserToResizeRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.dgvTurnos.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvTurnos.BackgroundColor = System.Drawing.SystemColors.ControlLight;
            this.dgvTurnos.BorderStyle = System.Windows.Forms.BorderStyle.None;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.Desktop;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvTurnos.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvTurnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.Desktop;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.Desktop;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvTurnos.DefaultCellStyle = dataGridViewCellStyle3;
            this.dgvTurnos.Location = new System.Drawing.Point(13, 149);
            this.dgvTurnos.MultiSelect = false;
            this.dgvTurnos.Name = "dgvTurnos";
            this.dgvTurnos.ReadOnly = true;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.ButtonFace;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.Desktop;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvTurnos.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvTurnos.RowHeadersVisible = false;
            this.dgvTurnos.RowTemplate.ReadOnly = true;
            this.dgvTurnos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvTurnos.Size = new System.Drawing.Size(775, 351);
            this.dgvTurnos.TabIndex = 0;
            this.dgvTurnos.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTurnos_CellContentDoubleClick);
            // 
            // btnNuevoTurno
            // 
            this.btnNuevoTurno.Location = new System.Drawing.Point(674, 57);
            this.btnNuevoTurno.Name = "btnNuevoTurno";
            this.btnNuevoTurno.Size = new System.Drawing.Size(113, 23);
            this.btnNuevoTurno.TabIndex = 2;
            this.btnNuevoTurno.Text = "&Nuevo Turno";
            this.btnNuevoTurno.UseVisualStyleBackColor = true;
            this.btnNuevoTurno.Click += new System.EventHandler(this.btnNuevoTurno_Click);
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(675, 115);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(112, 23);
            this.btnBuscar.TabIndex = 5;
            this.btnBuscar.Text = "&Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // cbxEstados
            // 
            this.cbxEstados.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxEstados.FormattingEnabled = true;
            this.cbxEstados.Location = new System.Drawing.Point(12, 118);
            this.cbxEstados.Name = "cbxEstados";
            this.cbxEstados.Size = new System.Drawing.Size(121, 21);
            this.cbxEstados.TabIndex = 6;
            // 
            // lblEstados
            // 
            this.lblEstados.AutoSize = true;
            this.lblEstados.Location = new System.Drawing.Point(12, 99);
            this.lblEstados.Name = "lblEstados";
            this.lblEstados.Size = new System.Drawing.Size(48, 13);
            this.lblEstados.TabIndex = 7;
            this.lblEstados.Text = "Estados:";
            // 
            // cbxEspecialidades
            // 
            this.cbxEspecialidades.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxEspecialidades.FormattingEnabled = true;
            this.cbxEspecialidades.Location = new System.Drawing.Point(140, 118);
            this.cbxEspecialidades.Name = "cbxEspecialidades";
            this.cbxEspecialidades.Size = new System.Drawing.Size(121, 21);
            this.cbxEspecialidades.TabIndex = 8;
            this.cbxEspecialidades.SelectedIndexChanged += new System.EventHandler(this.cbxEspecialidades_SelectedIndexChanged);
            // 
            // lblEspecialidad
            // 
            this.lblEspecialidad.AutoSize = true;
            this.lblEspecialidad.Location = new System.Drawing.Point(140, 99);
            this.lblEspecialidad.Name = "lblEspecialidad";
            this.lblEspecialidad.Size = new System.Drawing.Size(81, 13);
            this.lblEspecialidad.TabIndex = 9;
            this.lblEspecialidad.Text = "Especialidades:";
            // 
            // cbxProfesional
            // 
            this.cbxProfesional.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxProfesional.FormattingEnabled = true;
            this.cbxProfesional.Location = new System.Drawing.Point(268, 118);
            this.cbxProfesional.Name = "cbxProfesional";
            this.cbxProfesional.Size = new System.Drawing.Size(121, 21);
            this.cbxProfesional.TabIndex = 10;
            // 
            // lblProfesional
            // 
            this.lblProfesional.AutoSize = true;
            this.lblProfesional.Location = new System.Drawing.Point(268, 99);
            this.lblProfesional.Name = "lblProfesional";
            this.lblProfesional.Size = new System.Drawing.Size(59, 13);
            this.lblProfesional.TabIndex = 11;
            this.lblProfesional.Text = "Profesional";
            // 
            // tbxPaciente
            // 
            this.tbxPaciente.Location = new System.Drawing.Point(396, 118);
            this.tbxPaciente.Name = "tbxPaciente";
            this.tbxPaciente.ReadOnly = true;
            this.tbxPaciente.Size = new System.Drawing.Size(137, 20);
            this.tbxPaciente.TabIndex = 12;
            // 
            // lblPaciente
            // 
            this.lblPaciente.AutoSize = true;
            this.lblPaciente.Location = new System.Drawing.Point(396, 99);
            this.lblPaciente.Name = "lblPaciente";
            this.lblPaciente.Size = new System.Drawing.Size(52, 13);
            this.lblPaciente.TabIndex = 13;
            this.lblPaciente.Text = "Paciente:";
            // 
            // btnBuscarPaciente
            // 
            this.btnBuscarPaciente.Location = new System.Drawing.Point(539, 115);
            this.btnBuscarPaciente.Name = "btnBuscarPaciente";
            this.btnBuscarPaciente.Size = new System.Drawing.Size(110, 23);
            this.btnBuscarPaciente.TabIndex = 14;
            this.btnBuscarPaciente.Text = "Buscar Paciente";
            this.btnBuscarPaciente.UseVisualStyleBackColor = true;
            this.btnBuscarPaciente.Click += new System.EventHandler(this.btnBuscarPaciente_Click);
            // 
            // lblMesAntes
            // 
            this.lblMesAntes.AutoSize = true;
            this.lblMesAntes.Location = new System.Drawing.Point(13, 42);
            this.lblMesAntes.Name = "lblMesAntes";
            this.lblMesAntes.Size = new System.Drawing.Size(150, 13);
            this.lblMesAntes.TabIndex = 15;
            this.lblMesAntes.Text = "Ver desde mes/es anterior/es:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(184, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(152, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Ver hasta mes/es posterior/es:";
            // 
            // cbxMesAnterior
            // 
            this.cbxMesAnterior.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxMesAnterior.FormattingEnabled = true;
            this.cbxMesAnterior.Location = new System.Drawing.Point(16, 59);
            this.cbxMesAnterior.Name = "cbxMesAnterior";
            this.cbxMesAnterior.Size = new System.Drawing.Size(117, 21);
            this.cbxMesAnterior.TabIndex = 17;
            // 
            // cbxMesPosterior
            // 
            this.cbxMesPosterior.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxMesPosterior.FormattingEnabled = true;
            this.cbxMesPosterior.Location = new System.Drawing.Point(187, 59);
            this.cbxMesPosterior.Name = "cbxMesPosterior";
            this.cbxMesPosterior.Size = new System.Drawing.Size(117, 21);
            this.cbxMesPosterior.TabIndex = 18;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.editarToolStripMenuItem,
            this.ayudaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 19;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.configuracionToolStripMenuItem,
            this.salirToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // configuracionToolStripMenuItem
            // 
            this.configuracionToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.especialidadesToolStripMenuItem,
            this.serviciosMedicosToolStripMenuItem,
            this.usuariosToolStripMenuItem});
            this.configuracionToolStripMenuItem.Name = "configuracionToolStripMenuItem";
            this.configuracionToolStripMenuItem.Size = new System.Drawing.Size(150, 22);
            this.configuracionToolStripMenuItem.Text = "Configuracion";
            // 
            // especialidadesToolStripMenuItem
            // 
            this.especialidadesToolStripMenuItem.Name = "especialidadesToolStripMenuItem";
            this.especialidadesToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.especialidadesToolStripMenuItem.Text = "Especialidades";
            this.especialidadesToolStripMenuItem.Click += new System.EventHandler(this.especialidadesToolStripMenuItem_Click);
            // 
            // serviciosMedicosToolStripMenuItem
            // 
            this.serviciosMedicosToolStripMenuItem.Name = "serviciosMedicosToolStripMenuItem";
            this.serviciosMedicosToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.serviciosMedicosToolStripMenuItem.Text = "Servicios Medicos";
            this.serviciosMedicosToolStripMenuItem.Click += new System.EventHandler(this.serviciosMedicosToolStripMenuItem_Click);
            // 
            // usuariosToolStripMenuItem
            // 
            this.usuariosToolStripMenuItem.Name = "usuariosToolStripMenuItem";
            this.usuariosToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.usuariosToolStripMenuItem.Text = "Usuarios";
            this.usuariosToolStripMenuItem.Click += new System.EventHandler(this.usuariosToolStripMenuItem_Click);
            // 
            // salirToolStripMenuItem
            // 
            this.salirToolStripMenuItem.Name = "salirToolStripMenuItem";
            this.salirToolStripMenuItem.Size = new System.Drawing.Size(150, 22);
            this.salirToolStripMenuItem.Text = "Salir";
            this.salirToolStripMenuItem.Click += new System.EventHandler(this.salirToolStripMenuItem_Click);
            // 
            // editarToolStripMenuItem
            // 
            this.editarToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevoPacienteToolStripMenuItem,
            this.nuevoProfesionalToolStripMenuItem,
            this.buscarPacienteToolStripMenuItem,
            this.buscarProfesionalToolStripMenuItem});
            this.editarToolStripMenuItem.Name = "editarToolStripMenuItem";
            this.editarToolStripMenuItem.Size = new System.Drawing.Size(49, 20);
            this.editarToolStripMenuItem.Text = "Editar";
            // 
            // nuevoPacienteToolStripMenuItem
            // 
            this.nuevoPacienteToolStripMenuItem.Name = "nuevoPacienteToolStripMenuItem";
            this.nuevoPacienteToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.nuevoPacienteToolStripMenuItem.Text = "Nuevo Paciente";
            this.nuevoPacienteToolStripMenuItem.Click += new System.EventHandler(this.nuevoPacienteToolStripMenuItem_Click);
            // 
            // nuevoProfesionalToolStripMenuItem
            // 
            this.nuevoProfesionalToolStripMenuItem.Name = "nuevoProfesionalToolStripMenuItem";
            this.nuevoProfesionalToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.nuevoProfesionalToolStripMenuItem.Text = "Nuevo Profesional";
            this.nuevoProfesionalToolStripMenuItem.Click += new System.EventHandler(this.nuevoProfesionalToolStripMenuItem_Click);
            // 
            // buscarPacienteToolStripMenuItem
            // 
            this.buscarPacienteToolStripMenuItem.Name = "buscarPacienteToolStripMenuItem";
            this.buscarPacienteToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.buscarPacienteToolStripMenuItem.Text = "Buscar Paciente";
            this.buscarPacienteToolStripMenuItem.Click += new System.EventHandler(this.buscarPacienteToolStripMenuItem_Click);
            // 
            // buscarProfesionalToolStripMenuItem
            // 
            this.buscarProfesionalToolStripMenuItem.Name = "buscarProfesionalToolStripMenuItem";
            this.buscarProfesionalToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.buscarProfesionalToolStripMenuItem.Text = "Buscar Profesional";
            this.buscarProfesionalToolStripMenuItem.Click += new System.EventHandler(this.buscarProfesionalToolStripMenuItem_Click);
            // 
            // ayudaToolStripMenuItem
            // 
            this.ayudaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.acercaDeTurnosNackToolStripMenuItem});
            this.ayudaToolStripMenuItem.Name = "ayudaToolStripMenuItem";
            this.ayudaToolStripMenuItem.Size = new System.Drawing.Size(53, 20);
            this.ayudaToolStripMenuItem.Text = "Ayuda";
            // 
            // acercaDeTurnosNackToolStripMenuItem
            // 
            this.acercaDeTurnosNackToolStripMenuItem.Name = "acercaDeTurnosNackToolStripMenuItem";
            this.acercaDeTurnosNackToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.acercaDeTurnosNackToolStripMenuItem.Text = "Acerca de TurnosNack";
            this.acercaDeTurnosNackToolStripMenuItem.Click += new System.EventHandler(this.acercaDeTurnosNackToolStripMenuItem_Click);
            // 
            // btnCambioEstado
            // 
            this.btnCambioEstado.Location = new System.Drawing.Point(675, 87);
            this.btnCambioEstado.Name = "btnCambioEstado";
            this.btnCambioEstado.Size = new System.Drawing.Size(112, 23);
            this.btnCambioEstado.TabIndex = 20;
            this.btnCambioEstado.Text = "&Seleccionar Turno";
            this.btnCambioEstado.UseVisualStyleBackColor = true;
            this.btnCambioEstado.Click += new System.EventHandler(this.btnCambioEstado_Click);
            // 
            // TurnosForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.HighlightText;
            this.ClientSize = new System.Drawing.Size(800, 512);
            this.Controls.Add(this.btnCambioEstado);
            this.Controls.Add(this.cbxMesPosterior);
            this.Controls.Add(this.cbxMesAnterior);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblMesAntes);
            this.Controls.Add(this.btnBuscarPaciente);
            this.Controls.Add(this.lblPaciente);
            this.Controls.Add(this.tbxPaciente);
            this.Controls.Add(this.lblProfesional);
            this.Controls.Add(this.cbxProfesional);
            this.Controls.Add(this.lblEspecialidad);
            this.Controls.Add(this.cbxEspecialidades);
            this.Controls.Add(this.lblEstados);
            this.Controls.Add(this.cbxEstados);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.btnNuevoTurno);
            this.Controls.Add(this.dgvTurnos);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "TurnosForm";
            this.Text = "TurnosForm";
            this.Load += new System.EventHandler(this.TurnosForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnos)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTurnos;
        private System.Windows.Forms.Button btnNuevoTurno;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.ComboBox cbxEstados;
        private System.Windows.Forms.Label lblEstados;
        private System.Windows.Forms.ComboBox cbxEspecialidades;
        private System.Windows.Forms.Label lblEspecialidad;
        private System.Windows.Forms.ComboBox cbxProfesional;
        private System.Windows.Forms.Label lblProfesional;
        private System.Windows.Forms.TextBox tbxPaciente;
        private System.Windows.Forms.Label lblPaciente;
        private System.Windows.Forms.Button btnBuscarPaciente;
        private System.Windows.Forms.Label lblMesAntes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbxMesAnterior;
        private System.Windows.Forms.ComboBox cbxMesPosterior;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem salirToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem editarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem nuevoPacienteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem nuevoProfesionalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem buscarPacienteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem buscarProfesionalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ayudaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem acercaDeTurnosNackToolStripMenuItem;
        private System.Windows.Forms.Button btnCambioEstado;
        private System.Windows.Forms.ToolStripMenuItem configuracionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem especialidadesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem serviciosMedicosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem usuariosToolStripMenuItem;
    }
}