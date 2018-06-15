namespace MainMenu
{
    partial class nuevoTurno
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
            this.tbxIdPaciente = new System.Windows.Forms.TextBox();
            this.tbxNombre = new System.Windows.Forms.TextBox();
            this.tbxApellido = new System.Windows.Forms.TextBox();
            this.btnPaciente = new System.Windows.Forms.Button();
            this.lblId = new System.Windows.Forms.Label();
            this.lblNombre = new System.Windows.Forms.Label();
            this.lblApellido = new System.Windows.Forms.Label();
            this.cbxEspecialidades = new System.Windows.Forms.ComboBox();
            this.cbxProfesionales = new System.Windows.Forms.ComboBox();
            this.dgvDiasAtencion = new System.Windows.Forms.DataGridView();
            this.lblEspecialidades = new System.Windows.Forms.Label();
            this.lblProfesional = new System.Windows.Forms.Label();
            this.lblDiasAtencion = new System.Windows.Forms.Label();
            this.dtpFechaTurno = new System.Windows.Forms.DateTimePicker();
            this.lblDiaTurno = new System.Windows.Forms.Label();
            this.cbxHora = new System.Windows.Forms.ComboBox();
            this.cbxMinutos = new System.Windows.Forms.ComboBox();
            this.lblHora = new System.Windows.Forms.Label();
            this.lblMinutos = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.dgvTurnosDisponibles = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiasAtencion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnosDisponibles)).BeginInit();
            this.SuspendLayout();
            // 
            // tbxIdPaciente
            // 
            this.tbxIdPaciente.Enabled = false;
            this.tbxIdPaciente.Location = new System.Drawing.Point(13, 83);
            this.tbxIdPaciente.Name = "tbxIdPaciente";
            this.tbxIdPaciente.ReadOnly = true;
            this.tbxIdPaciente.Size = new System.Drawing.Size(50, 20);
            this.tbxIdPaciente.TabIndex = 0;
            // 
            // tbxNombre
            // 
            this.tbxNombre.Enabled = false;
            this.tbxNombre.Location = new System.Drawing.Point(91, 83);
            this.tbxNombre.Name = "tbxNombre";
            this.tbxNombre.ReadOnly = true;
            this.tbxNombre.Size = new System.Drawing.Size(111, 20);
            this.tbxNombre.TabIndex = 1;
            // 
            // tbxApellido
            // 
            this.tbxApellido.Enabled = false;
            this.tbxApellido.Location = new System.Drawing.Point(235, 83);
            this.tbxApellido.Name = "tbxApellido";
            this.tbxApellido.ReadOnly = true;
            this.tbxApellido.Size = new System.Drawing.Size(132, 20);
            this.tbxApellido.TabIndex = 2;
            // 
            // btnPaciente
            // 
            this.btnPaciente.Location = new System.Drawing.Point(433, 83);
            this.btnPaciente.Name = "btnPaciente";
            this.btnPaciente.Size = new System.Drawing.Size(154, 23);
            this.btnPaciente.TabIndex = 3;
            this.btnPaciente.Text = "SeleccionarPaciente";
            this.btnPaciente.UseVisualStyleBackColor = true;
            this.btnPaciente.Click += new System.EventHandler(this.btnPaciente_Click);
            // 
            // lblId
            // 
            this.lblId.AutoSize = true;
            this.lblId.Location = new System.Drawing.Point(13, 64);
            this.lblId.Name = "lblId";
            this.lblId.Size = new System.Drawing.Size(19, 13);
            this.lblId.TabIndex = 4;
            this.lblId.Text = "Id:";
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(91, 64);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(47, 13);
            this.lblNombre.TabIndex = 5;
            this.lblNombre.Text = "Nombre:";
            // 
            // lblApellido
            // 
            this.lblApellido.AutoSize = true;
            this.lblApellido.Location = new System.Drawing.Point(232, 64);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(47, 13);
            this.lblApellido.TabIndex = 6;
            this.lblApellido.Text = "Apellido:";
            // 
            // cbxEspecialidades
            // 
            this.cbxEspecialidades.FormattingEnabled = true;
            this.cbxEspecialidades.Location = new System.Drawing.Point(12, 149);
            this.cbxEspecialidades.Name = "cbxEspecialidades";
            this.cbxEspecialidades.Size = new System.Drawing.Size(121, 21);
            this.cbxEspecialidades.TabIndex = 7;
            this.cbxEspecialidades.SelectedIndexChanged += new System.EventHandler(this.cbxEspecialidades_SelectedIndexChanged);
            // 
            // cbxProfesionales
            // 
            this.cbxProfesionales.FormattingEnabled = true;
            this.cbxProfesionales.Location = new System.Drawing.Point(140, 149);
            this.cbxProfesionales.Name = "cbxProfesionales";
            this.cbxProfesionales.Size = new System.Drawing.Size(121, 21);
            this.cbxProfesionales.TabIndex = 8;
            this.cbxProfesionales.SelectedIndexChanged += new System.EventHandler(this.cbxProfesionales_SelectedIndexChanged);
            // 
            // dgvDiasAtencion
            // 
            this.dgvDiasAtencion.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvDiasAtencion.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvDiasAtencion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDiasAtencion.Location = new System.Drawing.Point(292, 149);
            this.dgvDiasAtencion.Name = "dgvDiasAtencion";
            this.dgvDiasAtencion.ReadOnly = true;
            this.dgvDiasAtencion.RowHeadersVisible = false;
            this.dgvDiasAtencion.Size = new System.Drawing.Size(295, 122);
            this.dgvDiasAtencion.TabIndex = 9;
            // 
            // lblEspecialidades
            // 
            this.lblEspecialidades.AutoSize = true;
            this.lblEspecialidades.Location = new System.Drawing.Point(12, 130);
            this.lblEspecialidades.Name = "lblEspecialidades";
            this.lblEspecialidades.Size = new System.Drawing.Size(81, 13);
            this.lblEspecialidades.TabIndex = 10;
            this.lblEspecialidades.Text = "Especialidades:";
            // 
            // lblProfesional
            // 
            this.lblProfesional.AutoSize = true;
            this.lblProfesional.Location = new System.Drawing.Point(140, 130);
            this.lblProfesional.Name = "lblProfesional";
            this.lblProfesional.Size = new System.Drawing.Size(62, 13);
            this.lblProfesional.TabIndex = 11;
            this.lblProfesional.Text = "Profesional:";
            // 
            // lblDiasAtencion
            // 
            this.lblDiasAtencion.AutoSize = true;
            this.lblDiasAtencion.Location = new System.Drawing.Point(292, 131);
            this.lblDiasAtencion.Name = "lblDiasAtencion";
            this.lblDiasAtencion.Size = new System.Drawing.Size(91, 13);
            this.lblDiasAtencion.TabIndex = 12;
            this.lblDiasAtencion.Text = "Dias de Atencion:";
            // 
            // dtpFechaTurno
            // 
            this.dtpFechaTurno.Location = new System.Drawing.Point(16, 291);
            this.dtpFechaTurno.Name = "dtpFechaTurno";
            this.dtpFechaTurno.Size = new System.Drawing.Size(249, 20);
            this.dtpFechaTurno.TabIndex = 13;
            this.dtpFechaTurno.ValueChanged += new System.EventHandler(this.dtpFechaTurno_ValueChanged);
            // 
            // lblDiaTurno
            // 
            this.lblDiaTurno.AutoSize = true;
            this.lblDiaTurno.Location = new System.Drawing.Point(17, 272);
            this.lblDiaTurno.Name = "lblDiaTurno";
            this.lblDiaTurno.Size = new System.Drawing.Size(69, 13);
            this.lblDiaTurno.TabIndex = 14;
            this.lblDiaTurno.Text = "Dia de Turno";
            // 
            // cbxHora
            // 
            this.cbxHora.FormattingEnabled = true;
            this.cbxHora.Location = new System.Drawing.Point(17, 346);
            this.cbxHora.Name = "cbxHora";
            this.cbxHora.Size = new System.Drawing.Size(80, 21);
            this.cbxHora.TabIndex = 15;
            // 
            // cbxMinutos
            // 
            this.cbxMinutos.FormattingEnabled = true;
            this.cbxMinutos.Location = new System.Drawing.Point(113, 346);
            this.cbxMinutos.Name = "cbxMinutos";
            this.cbxMinutos.Size = new System.Drawing.Size(82, 21);
            this.cbxMinutos.TabIndex = 16;
            // 
            // lblHora
            // 
            this.lblHora.AutoSize = true;
            this.lblHora.Location = new System.Drawing.Point(16, 327);
            this.lblHora.Name = "lblHora";
            this.lblHora.Size = new System.Drawing.Size(33, 13);
            this.lblHora.TabIndex = 17;
            this.lblHora.Text = "Hora:";
            // 
            // lblMinutos
            // 
            this.lblMinutos.AutoSize = true;
            this.lblMinutos.Location = new System.Drawing.Point(113, 327);
            this.lblMinutos.Name = "lblMinutos";
            this.lblMinutos.Size = new System.Drawing.Size(47, 13);
            this.lblMinutos.TabIndex = 18;
            this.lblMinutos.Text = "Minutos:";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(512, 447);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 19;
            this.btnGuardar.Text = "&Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(13, 447);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 20;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // dgvTurnosDisponibles
            // 
            this.dgvTurnosDisponibles.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvTurnosDisponibles.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvTurnosDisponibles.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTurnosDisponibles.Location = new System.Drawing.Point(292, 277);
            this.dgvTurnosDisponibles.Name = "dgvTurnosDisponibles";
            this.dgvTurnosDisponibles.ReadOnly = true;
            this.dgvTurnosDisponibles.RowHeadersVisible = false;
            this.dgvTurnosDisponibles.Size = new System.Drawing.Size(295, 150);
            this.dgvTurnosDisponibles.TabIndex = 21;
            // 
            // nuevoTurno
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(604, 482);
            this.Controls.Add(this.dgvTurnosDisponibles);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.lblMinutos);
            this.Controls.Add(this.lblHora);
            this.Controls.Add(this.cbxMinutos);
            this.Controls.Add(this.cbxHora);
            this.Controls.Add(this.lblDiaTurno);
            this.Controls.Add(this.dtpFechaTurno);
            this.Controls.Add(this.lblDiasAtencion);
            this.Controls.Add(this.lblProfesional);
            this.Controls.Add(this.lblEspecialidades);
            this.Controls.Add(this.dgvDiasAtencion);
            this.Controls.Add(this.cbxProfesionales);
            this.Controls.Add(this.cbxEspecialidades);
            this.Controls.Add(this.lblApellido);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.lblId);
            this.Controls.Add(this.btnPaciente);
            this.Controls.Add(this.tbxApellido);
            this.Controls.Add(this.tbxNombre);
            this.Controls.Add(this.tbxIdPaciente);
            this.Name = "nuevoTurno";
            this.Text = "nuevoTurno";
            this.Load += new System.EventHandler(this.nuevoTurno_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiasAtencion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnosDisponibles)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbxIdPaciente;
        private System.Windows.Forms.TextBox tbxNombre;
        private System.Windows.Forms.TextBox tbxApellido;
        private System.Windows.Forms.Button btnPaciente;
        private System.Windows.Forms.Label lblId;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.ComboBox cbxEspecialidades;
        private System.Windows.Forms.ComboBox cbxProfesionales;
        private System.Windows.Forms.DataGridView dgvDiasAtencion;
        private System.Windows.Forms.Label lblEspecialidades;
        private System.Windows.Forms.Label lblProfesional;
        private System.Windows.Forms.Label lblDiasAtencion;
        private System.Windows.Forms.DateTimePicker dtpFechaTurno;
        private System.Windows.Forms.Label lblDiaTurno;
        private System.Windows.Forms.ComboBox cbxHora;
        private System.Windows.Forms.ComboBox cbxMinutos;
        private System.Windows.Forms.Label lblHora;
        private System.Windows.Forms.Label lblMinutos;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.DataGridView dgvTurnosDisponibles;
    }
}