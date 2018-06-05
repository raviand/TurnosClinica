namespace MainMenu
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
            this.salirToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nuevoPacienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nuevoProfesionalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.buscarPacienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.buscarProfesionalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ayudaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.acercaDeTurnosNackToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnos)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvTurnos
            // 
            this.dgvTurnos.AllowUserToAddRows = false;
            this.dgvTurnos.AllowUserToDeleteRows = false;
            this.dgvTurnos.AllowUserToResizeRows = false;
            this.dgvTurnos.BackgroundColor = System.Drawing.SystemColors.ControlLight;
            this.dgvTurnos.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvTurnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTurnos.Location = new System.Drawing.Point(13, 149);
            this.dgvTurnos.MultiSelect = false;
            this.dgvTurnos.Name = "dgvTurnos";
            this.dgvTurnos.ReadOnly = true;
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
            this.btnNuevoTurno.Text = "Nuevo &Turno";
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
            this.cbxMesAnterior.FormattingEnabled = true;
            this.cbxMesAnterior.Location = new System.Drawing.Point(16, 59);
            this.cbxMesAnterior.Name = "cbxMesAnterior";
            this.cbxMesAnterior.Size = new System.Drawing.Size(117, 21);
            this.cbxMesAnterior.TabIndex = 17;
            // 
            // cbxMesPosterior
            // 
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
            this.salirToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // salirToolStripMenuItem
            // 
            this.salirToolStripMenuItem.Name = "salirToolStripMenuItem";
            this.salirToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
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
            // 
            // TurnosForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 512);
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
    }
}