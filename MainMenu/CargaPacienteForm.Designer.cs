namespace MainMenu
{
    partial class CargaPacienteForm
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
            this.lblNombre = new System.Windows.Forms.Label();
            this.tbxNombre = new System.Windows.Forms.TextBox();
            this.tbxApellido = new System.Windows.Forms.TextBox();
            this.lblApellido = new System.Windows.Forms.Label();
            this.tbxTelefono = new System.Windows.Forms.TextBox();
            this.lblTelefono = new System.Windows.Forms.Label();
            this.tbxMail = new System.Windows.Forms.TextBox();
            this.lblMail = new System.Windows.Forms.Label();
            this.lblFechaNacimiento = new System.Windows.Forms.Label();
            this.dtpFechaNacimiento = new System.Windows.Forms.DateTimePicker();
            this.cbxCoberturaMedica = new System.Windows.Forms.ComboBox();
            this.lblCoberturaMedica = new System.Windows.Forms.Label();
            this.tbxCarnetMedico = new System.Windows.Forms.TextBox();
            this.lblCarnet = new System.Windows.Forms.Label();
            this.cbxTipoTel = new System.Windows.Forms.ComboBox();
            this.lblTipoTel = new System.Windows.Forms.Label();
            this.lblDni = new System.Windows.Forms.Label();
            this.tbxDni = new System.Windows.Forms.TextBox();
            this.btnAdd = new System.Windows.Forms.Button();
            this.lblPlan = new System.Windows.Forms.Label();
            this.cbxPlan = new System.Windows.Forms.ComboBox();
            this.tbxCalle = new System.Windows.Forms.TextBox();
            this.lblCalle = new System.Windows.Forms.Label();
            this.tbxPiso = new System.Windows.Forms.TextBox();
            this.lblPiso = new System.Windows.Forms.Label();
            this.lblDepto = new System.Windows.Forms.Label();
            this.tbxDepto = new System.Windows.Forms.TextBox();
            this.tbxCP = new System.Windows.Forms.TextBox();
            this.lblCP = new System.Windows.Forms.Label();
            this.lblProvincia = new System.Windows.Forms.Label();
            this.cbxProvincia = new System.Windows.Forms.ComboBox();
            this.cbxLocalidad = new System.Windows.Forms.ComboBox();
            this.lblLocalidad = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(13, 13);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(44, 13);
            this.lblNombre.TabIndex = 0;
            this.lblNombre.Text = "Nombre";
            // 
            // tbxNombre
            // 
            this.tbxNombre.Location = new System.Drawing.Point(16, 30);
            this.tbxNombre.Name = "tbxNombre";
            this.tbxNombre.Size = new System.Drawing.Size(225, 20);
            this.tbxNombre.TabIndex = 1;
            // 
            // tbxApellido
            // 
            this.tbxApellido.Location = new System.Drawing.Point(282, 31);
            this.tbxApellido.Name = "tbxApellido";
            this.tbxApellido.Size = new System.Drawing.Size(228, 20);
            this.tbxApellido.TabIndex = 3;
            // 
            // lblApellido
            // 
            this.lblApellido.AutoSize = true;
            this.lblApellido.Location = new System.Drawing.Point(279, 14);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(44, 13);
            this.lblApellido.TabIndex = 2;
            this.lblApellido.Text = "Apellido";
            // 
            // tbxTelefono
            // 
            this.tbxTelefono.Location = new System.Drawing.Point(282, 128);
            this.tbxTelefono.Name = "tbxTelefono";
            this.tbxTelefono.Size = new System.Drawing.Size(144, 20);
            this.tbxTelefono.TabIndex = 5;
            this.tbxTelefono.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxTelefono_KeyPress);
            // 
            // lblTelefono
            // 
            this.lblTelefono.AutoSize = true;
            this.lblTelefono.Location = new System.Drawing.Point(279, 111);
            this.lblTelefono.Name = "lblTelefono";
            this.lblTelefono.Size = new System.Drawing.Size(49, 13);
            this.lblTelefono.TabIndex = 4;
            this.lblTelefono.Text = "Telefono";
            // 
            // tbxMail
            // 
            this.tbxMail.Location = new System.Drawing.Point(16, 78);
            this.tbxMail.Name = "tbxMail";
            this.tbxMail.Size = new System.Drawing.Size(225, 20);
            this.tbxMail.TabIndex = 7;
            // 
            // lblMail
            // 
            this.lblMail.AutoSize = true;
            this.lblMail.Location = new System.Drawing.Point(13, 61);
            this.lblMail.Name = "lblMail";
            this.lblMail.Size = new System.Drawing.Size(38, 13);
            this.lblMail.TabIndex = 6;
            this.lblMail.Text = "Correo";
            // 
            // lblFechaNacimiento
            // 
            this.lblFechaNacimiento.AutoSize = true;
            this.lblFechaNacimiento.Location = new System.Drawing.Point(13, 111);
            this.lblFechaNacimiento.Name = "lblFechaNacimiento";
            this.lblFechaNacimiento.Size = new System.Drawing.Size(108, 13);
            this.lblFechaNacimiento.TabIndex = 8;
            this.lblFechaNacimiento.Text = "Fecha de Nacimiento";
            // 
            // dtpFechaNacimiento
            // 
            this.dtpFechaNacimiento.Location = new System.Drawing.Point(16, 128);
            this.dtpFechaNacimiento.Name = "dtpFechaNacimiento";
            this.dtpFechaNacimiento.Size = new System.Drawing.Size(225, 20);
            this.dtpFechaNacimiento.TabIndex = 9;
            // 
            // cbxCoberturaMedica
            // 
            this.cbxCoberturaMedica.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxCoberturaMedica.FormattingEnabled = true;
            this.cbxCoberturaMedica.Location = new System.Drawing.Point(16, 210);
            this.cbxCoberturaMedica.Name = "cbxCoberturaMedica";
            this.cbxCoberturaMedica.Size = new System.Drawing.Size(122, 21);
            this.cbxCoberturaMedica.TabIndex = 10;
            this.cbxCoberturaMedica.SelectedIndexChanged += new System.EventHandler(this.cbxCoberturaMedica_SelectedIndexChanged);
            // 
            // lblCoberturaMedica
            // 
            this.lblCoberturaMedica.AutoSize = true;
            this.lblCoberturaMedica.Location = new System.Drawing.Point(16, 191);
            this.lblCoberturaMedica.Name = "lblCoberturaMedica";
            this.lblCoberturaMedica.Size = new System.Drawing.Size(91, 13);
            this.lblCoberturaMedica.TabIndex = 11;
            this.lblCoberturaMedica.Text = "Cobertura Medica";
            // 
            // tbxCarnetMedico
            // 
            this.tbxCarnetMedico.Location = new System.Drawing.Point(279, 211);
            this.tbxCarnetMedico.Name = "tbxCarnetMedico";
            this.tbxCarnetMedico.Size = new System.Drawing.Size(228, 20);
            this.tbxCarnetMedico.TabIndex = 12;
            this.tbxCarnetMedico.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxCarnetMedico_KeyPress);
            // 
            // lblCarnet
            // 
            this.lblCarnet.AutoSize = true;
            this.lblCarnet.Location = new System.Drawing.Point(279, 191);
            this.lblCarnet.Name = "lblCarnet";
            this.lblCarnet.Size = new System.Drawing.Size(78, 13);
            this.lblCarnet.TabIndex = 13;
            this.lblCarnet.Text = "Numero Carnet";
            // 
            // cbxTipoTel
            // 
            this.cbxTipoTel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxTipoTel.FormattingEnabled = true;
            this.cbxTipoTel.Location = new System.Drawing.Point(432, 127);
            this.cbxTipoTel.Name = "cbxTipoTel";
            this.cbxTipoTel.Size = new System.Drawing.Size(75, 21);
            this.cbxTipoTel.TabIndex = 14;
            // 
            // lblTipoTel
            // 
            this.lblTipoTel.AutoSize = true;
            this.lblTipoTel.Location = new System.Drawing.Point(405, 110);
            this.lblTipoTel.Name = "lblTipoTel";
            this.lblTipoTel.Size = new System.Drawing.Size(87, 13);
            this.lblTipoTel.TabIndex = 15;
            this.lblTipoTel.Text = "Tipo de telefono:";
            // 
            // lblDni
            // 
            this.lblDni.AutoSize = true;
            this.lblDni.Location = new System.Drawing.Point(279, 62);
            this.lblDni.Name = "lblDni";
            this.lblDni.Size = new System.Drawing.Size(29, 13);
            this.lblDni.TabIndex = 16;
            this.lblDni.Text = "DNI:";
            // 
            // tbxDni
            // 
            this.tbxDni.Location = new System.Drawing.Point(282, 78);
            this.tbxDni.MaxLength = 10;
            this.tbxDni.Name = "tbxDni";
            this.tbxDni.Size = new System.Drawing.Size(225, 20);
            this.tbxDni.TabIndex = 17;
            this.tbxDni.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxDni_KeyPress);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(282, 154);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(144, 23);
            this.btnAdd.TabIndex = 18;
            this.btnAdd.Text = "&Agregar Telefono";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // lblPlan
            // 
            this.lblPlan.AutoSize = true;
            this.lblPlan.Location = new System.Drawing.Point(141, 191);
            this.lblPlan.Name = "lblPlan";
            this.lblPlan.Size = new System.Drawing.Size(69, 13);
            this.lblPlan.TabIndex = 19;
            this.lblPlan.Text = "Plan Medico:";
            // 
            // cbxPlan
            // 
            this.cbxPlan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxPlan.FormattingEnabled = true;
            this.cbxPlan.Location = new System.Drawing.Point(144, 210);
            this.cbxPlan.Name = "cbxPlan";
            this.cbxPlan.Size = new System.Drawing.Size(105, 21);
            this.cbxPlan.TabIndex = 20;
            // 
            // tbxCalle
            // 
            this.tbxCalle.Location = new System.Drawing.Point(16, 270);
            this.tbxCalle.Name = "tbxCalle";
            this.tbxCalle.Size = new System.Drawing.Size(233, 20);
            this.tbxCalle.TabIndex = 21;
            // 
            // lblCalle
            // 
            this.lblCalle.AutoSize = true;
            this.lblCalle.Location = new System.Drawing.Point(13, 251);
            this.lblCalle.Name = "lblCalle";
            this.lblCalle.Size = new System.Drawing.Size(33, 13);
            this.lblCalle.TabIndex = 22;
            this.lblCalle.Text = "Calle:";
            // 
            // tbxPiso
            // 
            this.tbxPiso.Location = new System.Drawing.Point(279, 269);
            this.tbxPiso.Name = "tbxPiso";
            this.tbxPiso.Size = new System.Drawing.Size(65, 20);
            this.tbxPiso.TabIndex = 23;
            this.tbxPiso.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxPiso_KeyPress);
            // 
            // lblPiso
            // 
            this.lblPiso.AutoSize = true;
            this.lblPiso.Location = new System.Drawing.Point(279, 251);
            this.lblPiso.Name = "lblPiso";
            this.lblPiso.Size = new System.Drawing.Size(30, 13);
            this.lblPiso.TabIndex = 24;
            this.lblPiso.Text = "Piso:";
            // 
            // lblDepto
            // 
            this.lblDepto.AutoSize = true;
            this.lblDepto.Location = new System.Drawing.Point(361, 251);
            this.lblDepto.Name = "lblDepto";
            this.lblDepto.Size = new System.Drawing.Size(42, 13);
            this.lblDepto.TabIndex = 25;
            this.lblDepto.Text = "Depto.:";
            // 
            // tbxDepto
            // 
            this.tbxDepto.Location = new System.Drawing.Point(364, 269);
            this.tbxDepto.Name = "tbxDepto";
            this.tbxDepto.Size = new System.Drawing.Size(62, 20);
            this.tbxDepto.TabIndex = 26;
            // 
            // tbxCP
            // 
            this.tbxCP.Location = new System.Drawing.Point(449, 269);
            this.tbxCP.Name = "tbxCP";
            this.tbxCP.Size = new System.Drawing.Size(58, 20);
            this.tbxCP.TabIndex = 27;
            this.tbxCP.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxCP_KeyPress);
            // 
            // lblCP
            // 
            this.lblCP.AutoSize = true;
            this.lblCP.Location = new System.Drawing.Point(449, 250);
            this.lblCP.Name = "lblCP";
            this.lblCP.Size = new System.Drawing.Size(24, 13);
            this.lblCP.TabIndex = 28;
            this.lblCP.Text = "CP:";
            // 
            // lblProvincia
            // 
            this.lblProvincia.AutoSize = true;
            this.lblProvincia.Location = new System.Drawing.Point(16, 311);
            this.lblProvincia.Name = "lblProvincia";
            this.lblProvincia.Size = new System.Drawing.Size(54, 13);
            this.lblProvincia.TabIndex = 29;
            this.lblProvincia.Text = "Provincia:";
            // 
            // cbxProvincia
            // 
            this.cbxProvincia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxProvincia.FormattingEnabled = true;
            this.cbxProvincia.Location = new System.Drawing.Point(16, 328);
            this.cbxProvincia.Name = "cbxProvincia";
            this.cbxProvincia.Size = new System.Drawing.Size(233, 21);
            this.cbxProvincia.TabIndex = 30;
            this.cbxProvincia.SelectedIndexChanged += new System.EventHandler(this.cbxProvincia_SelectedIndexChanged);
            // 
            // cbxLocalidad
            // 
            this.cbxLocalidad.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxLocalidad.FormattingEnabled = true;
            this.cbxLocalidad.Location = new System.Drawing.Point(279, 328);
            this.cbxLocalidad.Name = "cbxLocalidad";
            this.cbxLocalidad.Size = new System.Drawing.Size(228, 21);
            this.cbxLocalidad.TabIndex = 31;
            // 
            // lblLocalidad
            // 
            this.lblLocalidad.AutoSize = true;
            this.lblLocalidad.Location = new System.Drawing.Point(279, 311);
            this.lblLocalidad.Name = "lblLocalidad";
            this.lblLocalidad.Size = new System.Drawing.Size(56, 13);
            this.lblLocalidad.TabIndex = 32;
            this.lblLocalidad.Text = "Localidad:";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(432, 374);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 33;
            this.btnGuardar.Text = "&Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(12, 374);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 34;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Location = new System.Drawing.Point(233, 374);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(75, 23);
            this.btnLimpiar.TabIndex = 35;
            this.btnLimpiar.Text = "&Limpiar";
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // CargaPacienteForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(581, 409);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.lblLocalidad);
            this.Controls.Add(this.cbxLocalidad);
            this.Controls.Add(this.cbxProvincia);
            this.Controls.Add(this.lblProvincia);
            this.Controls.Add(this.lblCP);
            this.Controls.Add(this.tbxCP);
            this.Controls.Add(this.tbxDepto);
            this.Controls.Add(this.lblDepto);
            this.Controls.Add(this.lblPiso);
            this.Controls.Add(this.tbxPiso);
            this.Controls.Add(this.lblCalle);
            this.Controls.Add(this.tbxCalle);
            this.Controls.Add(this.cbxPlan);
            this.Controls.Add(this.lblPlan);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.tbxDni);
            this.Controls.Add(this.lblDni);
            this.Controls.Add(this.lblTipoTel);
            this.Controls.Add(this.cbxTipoTel);
            this.Controls.Add(this.lblCarnet);
            this.Controls.Add(this.tbxCarnetMedico);
            this.Controls.Add(this.lblCoberturaMedica);
            this.Controls.Add(this.cbxCoberturaMedica);
            this.Controls.Add(this.dtpFechaNacimiento);
            this.Controls.Add(this.lblFechaNacimiento);
            this.Controls.Add(this.tbxMail);
            this.Controls.Add(this.lblMail);
            this.Controls.Add(this.tbxTelefono);
            this.Controls.Add(this.lblTelefono);
            this.Controls.Add(this.tbxApellido);
            this.Controls.Add(this.lblApellido);
            this.Controls.Add(this.tbxNombre);
            this.Controls.Add(this.lblNombre);
            this.Name = "CargaPacienteForm";
            this.Text = "Carga de Paciente";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.TextBox tbxNombre;
        private System.Windows.Forms.TextBox tbxApellido;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.TextBox tbxTelefono;
        private System.Windows.Forms.Label lblTelefono;
        private System.Windows.Forms.TextBox tbxMail;
        private System.Windows.Forms.Label lblMail;
        private System.Windows.Forms.Label lblFechaNacimiento;
        private System.Windows.Forms.DateTimePicker dtpFechaNacimiento;
        private System.Windows.Forms.ComboBox cbxCoberturaMedica;
        private System.Windows.Forms.Label lblCoberturaMedica;
        private System.Windows.Forms.TextBox tbxCarnetMedico;
        private System.Windows.Forms.Label lblCarnet;
        private System.Windows.Forms.ComboBox cbxTipoTel;
        private System.Windows.Forms.Label lblTipoTel;
        private System.Windows.Forms.Label lblDni;
        private System.Windows.Forms.TextBox tbxDni;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Label lblPlan;
        private System.Windows.Forms.ComboBox cbxPlan;
        private System.Windows.Forms.TextBox tbxCalle;
        private System.Windows.Forms.Label lblCalle;
        private System.Windows.Forms.TextBox tbxPiso;
        private System.Windows.Forms.Label lblPiso;
        private System.Windows.Forms.Label lblDepto;
        private System.Windows.Forms.TextBox tbxDepto;
        private System.Windows.Forms.TextBox tbxCP;
        private System.Windows.Forms.Label lblCP;
        private System.Windows.Forms.Label lblProvincia;
        private System.Windows.Forms.ComboBox cbxProvincia;
        private System.Windows.Forms.ComboBox cbxLocalidad;
        private System.Windows.Forms.Label lblLocalidad;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnLimpiar;
    }
}