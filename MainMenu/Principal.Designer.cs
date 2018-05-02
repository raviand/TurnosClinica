namespace MainMenu
{
    partial class Principal

    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnCargarMedico = new System.Windows.Forms.Button();
            this.btnCargaPaciente = new System.Windows.Forms.Button();
            this.btnSeleccionPaciente = new System.Windows.Forms.Button();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.btnVerAgenda = new System.Windows.Forms.Button();
            this.btnEliminarPaciente = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnCargarMedico
            // 
            this.btnCargarMedico.Location = new System.Drawing.Point(129, 107);
            this.btnCargarMedico.Name = "btnCargarMedico";
            this.btnCargarMedico.Size = new System.Drawing.Size(352, 23);
            this.btnCargarMedico.TabIndex = 0;
            this.btnCargarMedico.Text = "Cargar Especialista";
            this.btnCargarMedico.UseVisualStyleBackColor = true;
            this.btnCargarMedico.Click += new System.EventHandler(this.btnCargarMedico_Click);
            // 
            // btnCargaPaciente
            // 
            this.btnCargaPaciente.Location = new System.Drawing.Point(129, 158);
            this.btnCargaPaciente.Name = "btnCargaPaciente";
            this.btnCargaPaciente.Size = new System.Drawing.Size(352, 23);
            this.btnCargaPaciente.TabIndex = 1;
            this.btnCargaPaciente.Text = "Cargar Paciente";
            this.btnCargaPaciente.UseVisualStyleBackColor = true;
            this.btnCargaPaciente.Click += new System.EventHandler(this.btnCargaPaciente_Click);
            // 
            // btnSeleccionPaciente
            // 
            this.btnSeleccionPaciente.Location = new System.Drawing.Point(129, 209);
            this.btnSeleccionPaciente.Name = "btnSeleccionPaciente";
            this.btnSeleccionPaciente.Size = new System.Drawing.Size(352, 23);
            this.btnSeleccionPaciente.TabIndex = 2;
            this.btnSeleccionPaciente.Text = "Seleccionar Paciente";
            this.btnSeleccionPaciente.UseVisualStyleBackColor = true;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(129, 262);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(352, 23);
            this.btnBuscar.TabIndex = 3;
            this.btnBuscar.Text = "Buscar Paciente";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // btnVerAgenda
            // 
            this.btnVerAgenda.Location = new System.Drawing.Point(199, 314);
            this.btnVerAgenda.Name = "btnVerAgenda";
            this.btnVerAgenda.Size = new System.Drawing.Size(210, 54);
            this.btnVerAgenda.TabIndex = 4;
            this.btnVerAgenda.Text = "Agenda";
            this.btnVerAgenda.UseVisualStyleBackColor = true;
            // 
            // btnEliminarPaciente
            // 
            this.btnEliminarPaciente.Location = new System.Drawing.Point(129, 400);
            this.btnEliminarPaciente.Name = "btnEliminarPaciente";
            this.btnEliminarPaciente.Size = new System.Drawing.Size(352, 23);
            this.btnEliminarPaciente.TabIndex = 5;
            this.btnEliminarPaciente.Text = "Eliminar Paciente";
            this.btnEliminarPaciente.UseVisualStyleBackColor = true;
            this.btnEliminarPaciente.Click += new System.EventHandler(this.btnEliminarPaciente_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(619, 450);
            this.Controls.Add(this.btnEliminarPaciente);
            this.Controls.Add(this.btnVerAgenda);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.btnSeleccionPaciente);
            this.Controls.Add(this.btnCargaPaciente);
            this.Controls.Add(this.btnCargarMedico);
            this.Name = "Principal";
            this.Text = "Agenda Turnos";
            this.Load += new System.EventHandler(this.Principal_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCargarMedico;
        private System.Windows.Forms.Button btnCargaPaciente;
        private System.Windows.Forms.Button btnSeleccionPaciente;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Button btnVerAgenda;
        private System.Windows.Forms.Button btnEliminarPaciente;
    }
}

