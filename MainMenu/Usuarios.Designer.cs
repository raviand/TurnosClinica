﻿namespace MainMenu
{
    partial class Usuarios
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
            this.cbxEspecialista = new System.Windows.Forms.ComboBox();
            this.chkEspecialista = new System.Windows.Forms.CheckBox();
            this.lblUser = new System.Windows.Forms.Label();
            this.tbxUser = new System.Windows.Forms.TextBox();
            this.lblPass = new System.Windows.Forms.Label();
            this.tbxPass = new System.Windows.Forms.TextBox();
            this.tbxPermiso = new System.Windows.Forms.ComboBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.lblPermiso = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.dgvUsuarios = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUsuarios)).BeginInit();
            this.SuspendLayout();
            // 
            // cbxEspecialista
            // 
            this.cbxEspecialista.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxEspecialista.FormattingEnabled = true;
            this.cbxEspecialista.Location = new System.Drawing.Point(127, 78);
            this.cbxEspecialista.Name = "cbxEspecialista";
            this.cbxEspecialista.Size = new System.Drawing.Size(121, 21);
            this.cbxEspecialista.TabIndex = 0;
            // 
            // chkEspecialista
            // 
            this.chkEspecialista.AutoSize = true;
            this.chkEspecialista.Location = new System.Drawing.Point(16, 80);
            this.chkEspecialista.Name = "chkEspecialista";
            this.chkEspecialista.Size = new System.Drawing.Size(82, 17);
            this.chkEspecialista.TabIndex = 1;
            this.chkEspecialista.Text = "Especialista";
            this.chkEspecialista.UseVisualStyleBackColor = true;
            this.chkEspecialista.CheckedChanged += new System.EventHandler(this.chkEspecialista_CheckedChanged);
            // 
            // lblUser
            // 
            this.lblUser.AutoSize = true;
            this.lblUser.Location = new System.Drawing.Point(14, 108);
            this.lblUser.Name = "lblUser";
            this.lblUser.Size = new System.Drawing.Size(46, 13);
            this.lblUser.TabIndex = 2;
            this.lblUser.Text = "Usuario:";
            // 
            // tbxUser
            // 
            this.tbxUser.Location = new System.Drawing.Point(77, 105);
            this.tbxUser.Name = "tbxUser";
            this.tbxUser.Size = new System.Drawing.Size(100, 20);
            this.tbxUser.TabIndex = 3;
            // 
            // lblPass
            // 
            this.lblPass.AutoSize = true;
            this.lblPass.Location = new System.Drawing.Point(14, 144);
            this.lblPass.Name = "lblPass";
            this.lblPass.Size = new System.Drawing.Size(56, 13);
            this.lblPass.TabIndex = 4;
            this.lblPass.Text = "Password:";
            // 
            // tbxPass
            // 
            this.tbxPass.Location = new System.Drawing.Point(77, 136);
            this.tbxPass.Name = "tbxPass";
            this.tbxPass.Size = new System.Drawing.Size(100, 20);
            this.tbxPass.TabIndex = 5;
            // 
            // tbxPermiso
            // 
            this.tbxPermiso.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.tbxPermiso.FormattingEnabled = true;
            this.tbxPermiso.Location = new System.Drawing.Point(127, 173);
            this.tbxPermiso.Name = "tbxPermiso";
            this.tbxPermiso.Size = new System.Drawing.Size(121, 21);
            this.tbxPermiso.TabIndex = 6;
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(172, 411);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 7;
            this.btnGuardar.Text = "&Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            // 
            // lblPermiso
            // 
            this.lblPermiso.AutoSize = true;
            this.lblPermiso.Location = new System.Drawing.Point(15, 176);
            this.lblPermiso.Name = "lblPermiso";
            this.lblPermiso.Size = new System.Drawing.Size(83, 13);
            this.lblPermiso.TabIndex = 8;
            this.lblPermiso.Text = "Tipo de Permiso";
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(12, 410);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 9;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.Location = new System.Drawing.Point(13, 21);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(223, 29);
            this.lblTitulo.TabIndex = 10;
            this.lblTitulo.Text = "Registro de usuario";
            // 
            // dgvUsuarios
            // 
            this.dgvUsuarios.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUsuarios.Location = new System.Drawing.Point(13, 209);
            this.dgvUsuarios.Name = "dgvUsuarios";
            this.dgvUsuarios.Size = new System.Drawing.Size(235, 195);
            this.dgvUsuarios.TabIndex = 11;
            this.dgvUsuarios.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvUsuarios_CellContentClick);
            // 
            // Usuarios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(260, 445);
            this.Controls.Add(this.dgvUsuarios);
            this.Controls.Add(this.lblTitulo);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.lblPermiso);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.tbxPermiso);
            this.Controls.Add(this.tbxPass);
            this.Controls.Add(this.lblPass);
            this.Controls.Add(this.tbxUser);
            this.Controls.Add(this.lblUser);
            this.Controls.Add(this.chkEspecialista);
            this.Controls.Add(this.cbxEspecialista);
            this.Name = "Usuarios";
            this.Text = "Usuarios";
            this.Load += new System.EventHandler(this.Usuarios_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUsuarios)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbxEspecialista;
        private System.Windows.Forms.CheckBox chkEspecialista;
        private System.Windows.Forms.Label lblUser;
        private System.Windows.Forms.TextBox tbxUser;
        private System.Windows.Forms.Label lblPass;
        private System.Windows.Forms.TextBox tbxPass;
        private System.Windows.Forms.ComboBox tbxPermiso;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Label lblPermiso;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.DataGridView dgvUsuarios;
    }
}