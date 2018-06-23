namespace MainMenu
{
    partial class BuscarPaciente
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BuscarPaciente));
            this.btnBuscar = new System.Windows.Forms.Button();
            this.dgvListaPacientes = new System.Windows.Forms.DataGridView();
            this.btnModificar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnSeleccionar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.lblDni = new System.Windows.Forms.Label();
            this.lblApellido = new System.Windows.Forms.Label();
            this.tbxApellido = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.tbxNombre = new System.Windows.Forms.TextBox();
            this.lblLocalidad = new System.Windows.Forms.Label();
            this.lblProvincia = new System.Windows.Forms.Label();
            this.cbxLocalidad = new System.Windows.Forms.ComboBox();
            this.cbxProvincia = new System.Windows.Forms.ComboBox();
            this.lblUbicacion = new System.Windows.Forms.Label();
            this.tbxDni = new System.Windows.Forms.TextBox();
            this.btnHistorial = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListaPacientes)).BeginInit();
            this.SuspendLayout();
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(678, 52);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(75, 23);
            this.btnBuscar.TabIndex = 2;
            this.btnBuscar.Text = "&Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // dgvListaPacientes
            // 
            this.dgvListaPacientes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListaPacientes.Location = new System.Drawing.Point(13, 84);
            this.dgvListaPacientes.MultiSelect = false;
            this.dgvListaPacientes.Name = "dgvListaPacientes";
            this.dgvListaPacientes.ReadOnly = true;
            this.dgvListaPacientes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvListaPacientes.Size = new System.Drawing.Size(762, 377);
            this.dgvListaPacientes.TabIndex = 3;
            // 
            // btnModificar
            // 
            this.btnModificar.Location = new System.Drawing.Point(700, 467);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(75, 23);
            this.btnModificar.TabIndex = 4;
            this.btnModificar.Text = "&Modificar";
            this.btnModificar.UseVisualStyleBackColor = true;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(13, 467);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 5;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnSeleccionar
            // 
            this.btnSeleccionar.Location = new System.Drawing.Point(619, 467);
            this.btnSeleccionar.Name = "btnSeleccionar";
            this.btnSeleccionar.Size = new System.Drawing.Size(75, 23);
            this.btnSeleccionar.TabIndex = 6;
            this.btnSeleccionar.Text = "S&eleccionar";
            this.btnSeleccionar.UseVisualStyleBackColor = true;
            this.btnSeleccionar.Click += new System.EventHandler(this.btnSeleccionar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(356, 467);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(75, 23);
            this.btnEliminar.TabIndex = 7;
            this.btnEliminar.Text = "&Eliminar";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // lblDni
            // 
            this.lblDni.AutoSize = true;
            this.lblDni.Location = new System.Drawing.Point(529, 34);
            this.lblDni.Name = "lblDni";
            this.lblDni.Size = new System.Drawing.Size(29, 13);
            this.lblDni.TabIndex = 26;
            this.lblDni.Text = "DNI:";
            // 
            // lblApellido
            // 
            this.lblApellido.AutoSize = true;
            this.lblApellido.Location = new System.Drawing.Point(400, 33);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(47, 13);
            this.lblApellido.TabIndex = 25;
            this.lblApellido.Text = "Apellido:";
            // 
            // tbxApellido
            // 
            this.tbxApellido.Location = new System.Drawing.Point(400, 55);
            this.tbxApellido.Name = "tbxApellido";
            this.tbxApellido.Size = new System.Drawing.Size(125, 20);
            this.tbxApellido.TabIndex = 19;
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(272, 33);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(47, 13);
            this.lblNombre.TabIndex = 24;
            this.lblNombre.Text = "Nombre:";
            // 
            // tbxNombre
            // 
            this.tbxNombre.Location = new System.Drawing.Point(272, 55);
            this.tbxNombre.Name = "tbxNombre";
            this.tbxNombre.Size = new System.Drawing.Size(122, 20);
            this.tbxNombre.TabIndex = 18;
            // 
            // lblLocalidad
            // 
            this.lblLocalidad.AutoSize = true;
            this.lblLocalidad.Location = new System.Drawing.Point(14, 63);
            this.lblLocalidad.Name = "lblLocalidad";
            this.lblLocalidad.Size = new System.Drawing.Size(56, 13);
            this.lblLocalidad.TabIndex = 23;
            this.lblLocalidad.Text = "Localidad:";
            // 
            // lblProvincia
            // 
            this.lblProvincia.AutoSize = true;
            this.lblProvincia.Location = new System.Drawing.Point(14, 34);
            this.lblProvincia.Name = "lblProvincia";
            this.lblProvincia.Size = new System.Drawing.Size(54, 13);
            this.lblProvincia.TabIndex = 22;
            this.lblProvincia.Text = "Provincia:";
            // 
            // cbxLocalidad
            // 
            this.cbxLocalidad.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxLocalidad.FormattingEnabled = true;
            this.cbxLocalidad.Location = new System.Drawing.Point(93, 55);
            this.cbxLocalidad.Name = "cbxLocalidad";
            this.cbxLocalidad.Size = new System.Drawing.Size(146, 21);
            this.cbxLocalidad.TabIndex = 17;
            // 
            // cbxProvincia
            // 
            this.cbxProvincia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxProvincia.FormattingEnabled = true;
            this.cbxProvincia.Location = new System.Drawing.Point(93, 27);
            this.cbxProvincia.Name = "cbxProvincia";
            this.cbxProvincia.Size = new System.Drawing.Size(146, 21);
            this.cbxProvincia.TabIndex = 16;
            this.cbxProvincia.SelectedIndexChanged += new System.EventHandler(this.cbxProvincia_SelectedIndexChanged_1);
            // 
            // lblUbicacion
            // 
            this.lblUbicacion.AutoSize = true;
            this.lblUbicacion.Location = new System.Drawing.Point(90, -1);
            this.lblUbicacion.Name = "lblUbicacion";
            this.lblUbicacion.Size = new System.Drawing.Size(58, 13);
            this.lblUbicacion.TabIndex = 21;
            this.lblUbicacion.Text = "Ubicacion:";
            // 
            // tbxDni
            // 
            this.tbxDni.Location = new System.Drawing.Point(532, 55);
            this.tbxDni.Name = "tbxDni";
            this.tbxDni.Size = new System.Drawing.Size(140, 20);
            this.tbxDni.TabIndex = 20;
            // 
            // btnHistorial
            // 
            this.btnHistorial.Location = new System.Drawing.Point(538, 468);
            this.btnHistorial.Name = "btnHistorial";
            this.btnHistorial.Size = new System.Drawing.Size(75, 23);
            this.btnHistorial.TabIndex = 27;
            this.btnHistorial.Text = "&Ver Historial";
            this.btnHistorial.UseVisualStyleBackColor = true;
            this.btnHistorial.Click += new System.EventHandler(this.btnHistorial_Click);
            // 
            // BuscarPaciente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.HighlightText;
            this.ClientSize = new System.Drawing.Size(787, 502);
            this.Controls.Add(this.btnHistorial);
            this.Controls.Add(this.lblDni);
            this.Controls.Add(this.tbxDni);
            this.Controls.Add(this.lblApellido);
            this.Controls.Add(this.tbxApellido);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.tbxNombre);
            this.Controls.Add(this.lblLocalidad);
            this.Controls.Add(this.lblProvincia);
            this.Controls.Add(this.cbxLocalidad);
            this.Controls.Add(this.cbxProvincia);
            this.Controls.Add(this.lblUbicacion);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.btnSeleccionar);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.dgvListaPacientes);
            this.Controls.Add(this.btnBuscar);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "BuscarPaciente";
            this.Text = "BuscarPaciente";
            this.Load += new System.EventHandler(this.BuscarPaciente_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvListaPacientes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.DataGridView dgvListaPacientes;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnSeleccionar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Label lblDni;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.TextBox tbxApellido;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.TextBox tbxNombre;
        private System.Windows.Forms.Label lblLocalidad;
        private System.Windows.Forms.Label lblProvincia;
        private System.Windows.Forms.ComboBox cbxLocalidad;
        private System.Windows.Forms.ComboBox cbxProvincia;
        private System.Windows.Forms.Label lblUbicacion;
        private System.Windows.Forms.TextBox tbxDni;
        private System.Windows.Forms.Button btnHistorial;
    }
}