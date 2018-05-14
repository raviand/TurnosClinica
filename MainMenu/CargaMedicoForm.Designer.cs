namespace MainMenu
{
    partial class CargaMedicoForm
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
            this.cbxLunes = new System.Windows.Forms.CheckBox();
            this.cbxDomingo = new System.Windows.Forms.CheckBox();
            this.cbxSabado = new System.Windows.Forms.CheckBox();
            this.cbxViernes = new System.Windows.Forms.CheckBox();
            this.cbxJueves = new System.Windows.Forms.CheckBox();
            this.cbxMiercoles = new System.Windows.Forms.CheckBox();
            this.cbxMartes = new System.Windows.Forms.CheckBox();
            this.lblDiasDisponible = new System.Windows.Forms.Label();
            this.gbxAtiendeDomicilio = new System.Windows.Forms.GroupBox();
            this.rbtNo = new System.Windows.Forms.RadioButton();
            this.rbtSi = new System.Windows.Forms.RadioButton();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnVerTelefonos = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.tbxDni = new System.Windows.Forms.TextBox();
            this.lblDni = new System.Windows.Forms.Label();
            this.lblTipoTel = new System.Windows.Forms.Label();
            this.cbxTipoTel = new System.Windows.Forms.ComboBox();
            this.dtpFechaNacimiento = new System.Windows.Forms.DateTimePicker();
            this.lblFechaNacimiento = new System.Windows.Forms.Label();
            this.tbxMail = new System.Windows.Forms.TextBox();
            this.lblMail = new System.Windows.Forms.Label();
            this.tbxTelefono = new System.Windows.Forms.TextBox();
            this.lblTelefono = new System.Windows.Forms.Label();
            this.tbxApellido = new System.Windows.Forms.TextBox();
            this.lblApellido = new System.Windows.Forms.Label();
            this.tbxNombre = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.lblLocalidad = new System.Windows.Forms.Label();
            this.cbxLocalidad = new System.Windows.Forms.ComboBox();
            this.cbxProvincia = new System.Windows.Forms.ComboBox();
            this.lblProvincia = new System.Windows.Forms.Label();
            this.lblCP = new System.Windows.Forms.Label();
            this.tbxCP = new System.Windows.Forms.TextBox();
            this.tbxDepto = new System.Windows.Forms.TextBox();
            this.lblDepto = new System.Windows.Forms.Label();
            this.lblPiso = new System.Windows.Forms.Label();
            this.tbxPiso = new System.Windows.Forms.TextBox();
            this.lblCalle = new System.Windows.Forms.Label();
            this.tbxCalle = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.btnReset = new System.Windows.Forms.Button();
            this.gbxAtiendeDomicilio.SuspendLayout();
            this.SuspendLayout();
            // 
            // cbxLunes
            // 
            this.cbxLunes.AutoSize = true;
            this.cbxLunes.Location = new System.Drawing.Point(15, 316);
            this.cbxLunes.Name = "cbxLunes";
            this.cbxLunes.Size = new System.Drawing.Size(55, 17);
            this.cbxLunes.TabIndex = 10;
            this.cbxLunes.Text = "Lunes";
            this.cbxLunes.UseVisualStyleBackColor = true;
            // 
            // cbxDomingo
            // 
            this.cbxDomingo.AutoSize = true;
            this.cbxDomingo.Location = new System.Drawing.Point(419, 316);
            this.cbxDomingo.Name = "cbxDomingo";
            this.cbxDomingo.Size = new System.Drawing.Size(68, 17);
            this.cbxDomingo.TabIndex = 11;
            this.cbxDomingo.Text = "Domingo";
            this.cbxDomingo.UseVisualStyleBackColor = true;
            // 
            // cbxSabado
            // 
            this.cbxSabado.AutoSize = true;
            this.cbxSabado.Location = new System.Drawing.Point(350, 316);
            this.cbxSabado.Name = "cbxSabado";
            this.cbxSabado.Size = new System.Drawing.Size(63, 17);
            this.cbxSabado.TabIndex = 12;
            this.cbxSabado.Text = "Sabado";
            this.cbxSabado.UseVisualStyleBackColor = true;
            // 
            // cbxViernes
            // 
            this.cbxViernes.AutoSize = true;
            this.cbxViernes.Location = new System.Drawing.Point(283, 316);
            this.cbxViernes.Name = "cbxViernes";
            this.cbxViernes.Size = new System.Drawing.Size(61, 17);
            this.cbxViernes.TabIndex = 13;
            this.cbxViernes.Text = "Viernes";
            this.cbxViernes.UseVisualStyleBackColor = true;
            // 
            // cbxJueves
            // 
            this.cbxJueves.AutoSize = true;
            this.cbxJueves.Location = new System.Drawing.Point(217, 316);
            this.cbxJueves.Name = "cbxJueves";
            this.cbxJueves.Size = new System.Drawing.Size(60, 17);
            this.cbxJueves.TabIndex = 14;
            this.cbxJueves.Text = "Jueves";
            this.cbxJueves.UseVisualStyleBackColor = true;
            // 
            // cbxMiercoles
            // 
            this.cbxMiercoles.AutoSize = true;
            this.cbxMiercoles.Location = new System.Drawing.Point(140, 316);
            this.cbxMiercoles.Name = "cbxMiercoles";
            this.cbxMiercoles.Size = new System.Drawing.Size(71, 17);
            this.cbxMiercoles.TabIndex = 15;
            this.cbxMiercoles.Text = "Miercoles";
            this.cbxMiercoles.UseVisualStyleBackColor = true;
            // 
            // cbxMartes
            // 
            this.cbxMartes.AutoSize = true;
            this.cbxMartes.Location = new System.Drawing.Point(76, 316);
            this.cbxMartes.Name = "cbxMartes";
            this.cbxMartes.Size = new System.Drawing.Size(58, 17);
            this.cbxMartes.TabIndex = 16;
            this.cbxMartes.Text = "Martes";
            this.cbxMartes.UseVisualStyleBackColor = true;
            // 
            // lblDiasDisponible
            // 
            this.lblDiasDisponible.AutoSize = true;
            this.lblDiasDisponible.Location = new System.Drawing.Point(13, 294);
            this.lblDiasDisponible.Name = "lblDiasDisponible";
            this.lblDiasDisponible.Size = new System.Drawing.Size(85, 13);
            this.lblDiasDisponible.TabIndex = 17;
            this.lblDiasDisponible.Text = "Dias Disponibles";
            // 
            // gbxAtiendeDomicilio
            // 
            this.gbxAtiendeDomicilio.Controls.Add(this.rbtNo);
            this.gbxAtiendeDomicilio.Controls.Add(this.rbtSi);
            this.gbxAtiendeDomicilio.Location = new System.Drawing.Point(16, 354);
            this.gbxAtiendeDomicilio.Name = "gbxAtiendeDomicilio";
            this.gbxAtiendeDomicilio.Size = new System.Drawing.Size(195, 54);
            this.gbxAtiendeDomicilio.TabIndex = 18;
            this.gbxAtiendeDomicilio.TabStop = false;
            this.gbxAtiendeDomicilio.Text = "Atiende en Domicilio:";
            // 
            // rbtNo
            // 
            this.rbtNo.AutoSize = true;
            this.rbtNo.Location = new System.Drawing.Point(121, 20);
            this.rbtNo.Name = "rbtNo";
            this.rbtNo.Size = new System.Drawing.Size(39, 17);
            this.rbtNo.TabIndex = 1;
            this.rbtNo.TabStop = true;
            this.rbtNo.Text = "No";
            this.rbtNo.UseVisualStyleBackColor = true;
            // 
            // rbtSi
            // 
            this.rbtSi.AutoSize = true;
            this.rbtSi.Location = new System.Drawing.Point(30, 20);
            this.rbtSi.Name = "rbtSi";
            this.rbtSi.Size = new System.Drawing.Size(34, 17);
            this.rbtSi.TabIndex = 0;
            this.rbtSi.TabStop = true;
            this.rbtSi.Text = "Si";
            this.rbtSi.UseVisualStyleBackColor = true;
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(432, 432);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 19;
            this.btnGuardar.Text = "&Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(12, 432);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 20;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnVerTelefonos
            // 
            this.btnVerTelefonos.Location = new System.Drawing.Point(432, 152);
            this.btnVerTelefonos.Name = "btnVerTelefonos";
            this.btnVerTelefonos.Size = new System.Drawing.Size(75, 23);
            this.btnVerTelefonos.TabIndex = 52;
            this.btnVerTelefonos.Text = "&Ver";
            this.btnVerTelefonos.UseVisualStyleBackColor = true;
            this.btnVerTelefonos.Click += new System.EventHandler(this.btnVerTelefonos_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(282, 152);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(144, 23);
            this.btnAdd.TabIndex = 51;
            this.btnAdd.Text = "&Agregar Telefono";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // tbxDni
            // 
            this.tbxDni.Location = new System.Drawing.Point(282, 76);
            this.tbxDni.MaxLength = 10;
            this.tbxDni.Name = "tbxDni";
            this.tbxDni.Size = new System.Drawing.Size(225, 20);
            this.tbxDni.TabIndex = 50;
            this.tbxDni.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxDni_KeyPress);
            // 
            // lblDni
            // 
            this.lblDni.AutoSize = true;
            this.lblDni.Location = new System.Drawing.Point(279, 60);
            this.lblDni.Name = "lblDni";
            this.lblDni.Size = new System.Drawing.Size(42, 13);
            this.lblDni.TabIndex = 49;
            this.lblDni.Text = "DNI (*):";
            // 
            // lblTipoTel
            // 
            this.lblTipoTel.AutoSize = true;
            this.lblTipoTel.Location = new System.Drawing.Point(429, 109);
            this.lblTipoTel.Name = "lblTipoTel";
            this.lblTipoTel.Size = new System.Drawing.Size(87, 13);
            this.lblTipoTel.TabIndex = 48;
            this.lblTipoTel.Text = "Tipo de telefono:";
            // 
            // cbxTipoTel
            // 
            this.cbxTipoTel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxTipoTel.FormattingEnabled = true;
            this.cbxTipoTel.Location = new System.Drawing.Point(432, 125);
            this.cbxTipoTel.Name = "cbxTipoTel";
            this.cbxTipoTel.Size = new System.Drawing.Size(75, 21);
            this.cbxTipoTel.TabIndex = 47;
            // 
            // dtpFechaNacimiento
            // 
            this.dtpFechaNacimiento.Location = new System.Drawing.Point(16, 126);
            this.dtpFechaNacimiento.Name = "dtpFechaNacimiento";
            this.dtpFechaNacimiento.Size = new System.Drawing.Size(225, 20);
            this.dtpFechaNacimiento.TabIndex = 46;
            // 
            // lblFechaNacimiento
            // 
            this.lblFechaNacimiento.AutoSize = true;
            this.lblFechaNacimiento.Location = new System.Drawing.Point(13, 109);
            this.lblFechaNacimiento.Name = "lblFechaNacimiento";
            this.lblFechaNacimiento.Size = new System.Drawing.Size(108, 13);
            this.lblFechaNacimiento.TabIndex = 45;
            this.lblFechaNacimiento.Text = "Fecha de Nacimiento";
            // 
            // tbxMail
            // 
            this.tbxMail.Location = new System.Drawing.Point(16, 76);
            this.tbxMail.Name = "tbxMail";
            this.tbxMail.Size = new System.Drawing.Size(225, 20);
            this.tbxMail.TabIndex = 44;
            // 
            // lblMail
            // 
            this.lblMail.AutoSize = true;
            this.lblMail.Location = new System.Drawing.Point(13, 59);
            this.lblMail.Name = "lblMail";
            this.lblMail.Size = new System.Drawing.Size(51, 13);
            this.lblMail.TabIndex = 43;
            this.lblMail.Text = "Correo (*)";
            // 
            // tbxTelefono
            // 
            this.tbxTelefono.Location = new System.Drawing.Point(282, 126);
            this.tbxTelefono.Name = "tbxTelefono";
            this.tbxTelefono.Size = new System.Drawing.Size(144, 20);
            this.tbxTelefono.TabIndex = 42;
            this.tbxTelefono.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxTelefono_KeyPress);
            // 
            // lblTelefono
            // 
            this.lblTelefono.AutoSize = true;
            this.lblTelefono.Location = new System.Drawing.Point(279, 109);
            this.lblTelefono.Name = "lblTelefono";
            this.lblTelefono.Size = new System.Drawing.Size(62, 13);
            this.lblTelefono.TabIndex = 41;
            this.lblTelefono.Text = "Telefono (*)";
            // 
            // tbxApellido
            // 
            this.tbxApellido.Location = new System.Drawing.Point(282, 29);
            this.tbxApellido.Name = "tbxApellido";
            this.tbxApellido.Size = new System.Drawing.Size(228, 20);
            this.tbxApellido.TabIndex = 40;
            // 
            // lblApellido
            // 
            this.lblApellido.AutoSize = true;
            this.lblApellido.Location = new System.Drawing.Point(279, 12);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(44, 13);
            this.lblApellido.TabIndex = 39;
            this.lblApellido.Text = "Apellido";
            // 
            // tbxNombre
            // 
            this.tbxNombre.Location = new System.Drawing.Point(16, 28);
            this.tbxNombre.Name = "tbxNombre";
            this.tbxNombre.Size = new System.Drawing.Size(225, 20);
            this.tbxNombre.TabIndex = 38;
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(13, 11);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(44, 13);
            this.lblNombre.TabIndex = 37;
            this.lblNombre.Text = "Nombre";
            // 
            // lblLocalidad
            // 
            this.lblLocalidad.AutoSize = true;
            this.lblLocalidad.Location = new System.Drawing.Point(279, 246);
            this.lblLocalidad.Name = "lblLocalidad";
            this.lblLocalidad.Size = new System.Drawing.Size(56, 13);
            this.lblLocalidad.TabIndex = 64;
            this.lblLocalidad.Text = "Localidad:";
            // 
            // cbxLocalidad
            // 
            this.cbxLocalidad.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxLocalidad.FormattingEnabled = true;
            this.cbxLocalidad.Location = new System.Drawing.Point(279, 263);
            this.cbxLocalidad.Name = "cbxLocalidad";
            this.cbxLocalidad.Size = new System.Drawing.Size(228, 21);
            this.cbxLocalidad.TabIndex = 63;
            // 
            // cbxProvincia
            // 
            this.cbxProvincia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxProvincia.FormattingEnabled = true;
            this.cbxProvincia.Location = new System.Drawing.Point(16, 263);
            this.cbxProvincia.Name = "cbxProvincia";
            this.cbxProvincia.Size = new System.Drawing.Size(233, 21);
            this.cbxProvincia.TabIndex = 62;
            this.cbxProvincia.SelectedIndexChanged += new System.EventHandler(this.cbxProvincia_SelectedIndexChanged);
            // 
            // lblProvincia
            // 
            this.lblProvincia.AutoSize = true;
            this.lblProvincia.Location = new System.Drawing.Point(16, 246);
            this.lblProvincia.Name = "lblProvincia";
            this.lblProvincia.Size = new System.Drawing.Size(54, 13);
            this.lblProvincia.TabIndex = 61;
            this.lblProvincia.Text = "Provincia:";
            // 
            // lblCP
            // 
            this.lblCP.AutoSize = true;
            this.lblCP.Location = new System.Drawing.Point(449, 185);
            this.lblCP.Name = "lblCP";
            this.lblCP.Size = new System.Drawing.Size(24, 13);
            this.lblCP.TabIndex = 60;
            this.lblCP.Text = "CP:";
            // 
            // tbxCP
            // 
            this.tbxCP.Location = new System.Drawing.Point(449, 204);
            this.tbxCP.Name = "tbxCP";
            this.tbxCP.Size = new System.Drawing.Size(58, 20);
            this.tbxCP.TabIndex = 59;
            this.tbxCP.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxCP_KeyPress);
            // 
            // tbxDepto
            // 
            this.tbxDepto.Location = new System.Drawing.Point(364, 204);
            this.tbxDepto.Name = "tbxDepto";
            this.tbxDepto.Size = new System.Drawing.Size(62, 20);
            this.tbxDepto.TabIndex = 58;
            // 
            // lblDepto
            // 
            this.lblDepto.AutoSize = true;
            this.lblDepto.Location = new System.Drawing.Point(361, 186);
            this.lblDepto.Name = "lblDepto";
            this.lblDepto.Size = new System.Drawing.Size(42, 13);
            this.lblDepto.TabIndex = 57;
            this.lblDepto.Text = "Depto.:";
            // 
            // lblPiso
            // 
            this.lblPiso.AutoSize = true;
            this.lblPiso.Location = new System.Drawing.Point(279, 186);
            this.lblPiso.Name = "lblPiso";
            this.lblPiso.Size = new System.Drawing.Size(30, 13);
            this.lblPiso.TabIndex = 56;
            this.lblPiso.Text = "Piso:";
            // 
            // tbxPiso
            // 
            this.tbxPiso.Location = new System.Drawing.Point(279, 204);
            this.tbxPiso.Name = "tbxPiso";
            this.tbxPiso.Size = new System.Drawing.Size(65, 20);
            this.tbxPiso.TabIndex = 55;
            this.tbxPiso.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbxPiso_KeyPress);
            // 
            // lblCalle
            // 
            this.lblCalle.AutoSize = true;
            this.lblCalle.Location = new System.Drawing.Point(13, 186);
            this.lblCalle.Name = "lblCalle";
            this.lblCalle.Size = new System.Drawing.Size(33, 13);
            this.lblCalle.TabIndex = 54;
            this.lblCalle.Text = "Calle:";
            // 
            // tbxCalle
            // 
            this.tbxCalle.Location = new System.Drawing.Point(16, 205);
            this.tbxCalle.Name = "tbxCalle";
            this.tbxCalle.Size = new System.Drawing.Size(233, 20);
            this.tbxCalle.TabIndex = 53;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(279, 354);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(228, 23);
            this.button1.TabIndex = 65;
            this.button1.Text = "Cargar &Especialidades";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(279, 385);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(228, 23);
            this.button2.TabIndex = 66;
            this.button2.Text = "Cargar &Prepagas Habilitadas";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(202, 432);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(75, 23);
            this.btnReset.TabIndex = 67;
            this.btnReset.Text = "&Reset";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // CargaMedicoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(529, 465);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
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
            this.Controls.Add(this.btnVerTelefonos);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.tbxDni);
            this.Controls.Add(this.lblDni);
            this.Controls.Add(this.lblTipoTel);
            this.Controls.Add(this.cbxTipoTel);
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
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.gbxAtiendeDomicilio);
            this.Controls.Add(this.lblDiasDisponible);
            this.Controls.Add(this.cbxMartes);
            this.Controls.Add(this.cbxMiercoles);
            this.Controls.Add(this.cbxJueves);
            this.Controls.Add(this.cbxViernes);
            this.Controls.Add(this.cbxSabado);
            this.Controls.Add(this.cbxDomingo);
            this.Controls.Add(this.cbxLunes);
            this.Name = "CargaMedicoForm";
            this.Text = "Carga de Especialista";
            this.gbxAtiendeDomicilio.ResumeLayout(false);
            this.gbxAtiendeDomicilio.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.CheckBox cbxLunes;
        private System.Windows.Forms.CheckBox cbxDomingo;
        private System.Windows.Forms.CheckBox cbxSabado;
        private System.Windows.Forms.CheckBox cbxViernes;
        private System.Windows.Forms.CheckBox cbxJueves;
        private System.Windows.Forms.CheckBox cbxMiercoles;
        private System.Windows.Forms.CheckBox cbxMartes;
        private System.Windows.Forms.Label lblDiasDisponible;
        private System.Windows.Forms.GroupBox gbxAtiendeDomicilio;
        private System.Windows.Forms.RadioButton rbtNo;
        private System.Windows.Forms.RadioButton rbtSi;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnVerTelefonos;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.TextBox tbxDni;
        private System.Windows.Forms.Label lblDni;
        private System.Windows.Forms.Label lblTipoTel;
        private System.Windows.Forms.ComboBox cbxTipoTel;
        private System.Windows.Forms.DateTimePicker dtpFechaNacimiento;
        private System.Windows.Forms.Label lblFechaNacimiento;
        private System.Windows.Forms.TextBox tbxMail;
        private System.Windows.Forms.Label lblMail;
        private System.Windows.Forms.TextBox tbxTelefono;
        private System.Windows.Forms.Label lblTelefono;
        private System.Windows.Forms.TextBox tbxApellido;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.TextBox tbxNombre;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label lblLocalidad;
        private System.Windows.Forms.ComboBox cbxLocalidad;
        private System.Windows.Forms.ComboBox cbxProvincia;
        private System.Windows.Forms.Label lblProvincia;
        private System.Windows.Forms.Label lblCP;
        private System.Windows.Forms.TextBox tbxCP;
        private System.Windows.Forms.TextBox tbxDepto;
        private System.Windows.Forms.Label lblDepto;
        private System.Windows.Forms.Label lblPiso;
        private System.Windows.Forms.TextBox tbxPiso;
        private System.Windows.Forms.Label lblCalle;
        private System.Windows.Forms.TextBox tbxCalle;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button btnReset;
    }
}