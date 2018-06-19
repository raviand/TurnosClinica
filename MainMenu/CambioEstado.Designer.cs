namespace MainMenu
{
    partial class CambioEstado
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CambioEstado));
            this.tbxEstadoActaul = new System.Windows.Forms.TextBox();
            this.lblEstadoActual = new System.Windows.Forms.Label();
            this.cbxEstado = new System.Windows.Forms.ComboBox();
            this.rtbComentario = new System.Windows.Forms.RichTextBox();
            this.lblEstado = new System.Windows.Forms.Label();
            this.btnGurdar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.lblIndicaciones = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // tbxEstadoActaul
            // 
            this.tbxEstadoActaul.Location = new System.Drawing.Point(343, 12);
            this.tbxEstadoActaul.Name = "tbxEstadoActaul";
            this.tbxEstadoActaul.ReadOnly = true;
            this.tbxEstadoActaul.Size = new System.Drawing.Size(113, 20);
            this.tbxEstadoActaul.TabIndex = 0;
            // 
            // lblEstadoActual
            // 
            this.lblEstadoActual.AutoSize = true;
            this.lblEstadoActual.Location = new System.Drawing.Point(261, 15);
            this.lblEstadoActual.Name = "lblEstadoActual";
            this.lblEstadoActual.Size = new System.Drawing.Size(76, 13);
            this.lblEstadoActual.TabIndex = 1;
            this.lblEstadoActual.Text = "Estado Actual:";
            // 
            // cbxEstado
            // 
            this.cbxEstado.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxEstado.FormattingEnabled = true;
            this.cbxEstado.Location = new System.Drawing.Point(12, 66);
            this.cbxEstado.Name = "cbxEstado";
            this.cbxEstado.Size = new System.Drawing.Size(121, 21);
            this.cbxEstado.TabIndex = 2;
            this.cbxEstado.SelectedIndexChanged += new System.EventHandler(this.cbxEstado_SelectedIndexChanged);
            // 
            // rtbComentario
            // 
            this.rtbComentario.Location = new System.Drawing.Point(12, 128);
            this.rtbComentario.Multiline = false;
            this.rtbComentario.Name = "rtbComentario";
            this.rtbComentario.Size = new System.Drawing.Size(444, 177);
            this.rtbComentario.TabIndex = 4;
            this.rtbComentario.Text = "";
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.Location = new System.Drawing.Point(12, 47);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(131, 13);
            this.lblEstado.TabIndex = 5;
            this.lblEstado.Text = "Seleccione nuevo estado:";
            // 
            // btnGurdar
            // 
            this.btnGurdar.Location = new System.Drawing.Point(380, 312);
            this.btnGurdar.Name = "btnGurdar";
            this.btnGurdar.Size = new System.Drawing.Size(75, 23);
            this.btnGurdar.TabIndex = 6;
            this.btnGurdar.Text = "&Guardar";
            this.btnGurdar.UseVisualStyleBackColor = true;
            this.btnGurdar.Click += new System.EventHandler(this.btnGurdar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(12, 312);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 7;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // lblIndicaciones
            // 
            this.lblIndicaciones.AutoSize = true;
            this.lblIndicaciones.Location = new System.Drawing.Point(13, 112);
            this.lblIndicaciones.Name = "lblIndicaciones";
            this.lblIndicaciones.Size = new System.Drawing.Size(40, 13);
            this.lblIndicaciones.TabIndex = 8;
            this.lblIndicaciones.Text = "Detalle";
            // 
            // CambioEstado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.HighlightText;
            this.ClientSize = new System.Drawing.Size(468, 347);
            this.Controls.Add(this.lblIndicaciones);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnGurdar);
            this.Controls.Add(this.lblEstado);
            this.Controls.Add(this.rtbComentario);
            this.Controls.Add(this.cbxEstado);
            this.Controls.Add(this.lblEstadoActual);
            this.Controls.Add(this.tbxEstadoActaul);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "CambioEstado";
            this.Text = "CambioEstado";
            this.Load += new System.EventHandler(this.CambioEstado_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbxEstadoActaul;
        private System.Windows.Forms.Label lblEstadoActual;
        private System.Windows.Forms.ComboBox cbxEstado;
        private System.Windows.Forms.RichTextBox rtbComentario;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.Button btnGurdar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label lblIndicaciones;
    }
}