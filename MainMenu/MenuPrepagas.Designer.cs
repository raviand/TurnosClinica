namespace MainMenu
{
    partial class MenuPrepagas
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
            this.lbxOpcionesCobertura = new System.Windows.Forms.ListBox();
            this.lbxEleccionesCobertura = new System.Windows.Forms.ListBox();
            this.btnToRight = new System.Windows.Forms.Button();
            this.btnDesSeleccion = new System.Windows.Forms.Button();
            this.btnClean = new System.Windows.Forms.Button();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbxOpcionesCobertura
            // 
            this.lbxOpcionesCobertura.FormattingEnabled = true;
            this.lbxOpcionesCobertura.Location = new System.Drawing.Point(16, 40);
            this.lbxOpcionesCobertura.Name = "lbxOpcionesCobertura";
            this.lbxOpcionesCobertura.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.lbxOpcionesCobertura.Size = new System.Drawing.Size(250, 290);
            this.lbxOpcionesCobertura.TabIndex = 0;
            // 
            // lbxEleccionesCobertura
            // 
            this.lbxEleccionesCobertura.FormattingEnabled = true;
            this.lbxEleccionesCobertura.Location = new System.Drawing.Point(336, 40);
            this.lbxEleccionesCobertura.Name = "lbxEleccionesCobertura";
            this.lbxEleccionesCobertura.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.lbxEleccionesCobertura.Size = new System.Drawing.Size(250, 290);
            this.lbxEleccionesCobertura.TabIndex = 1;
            // 
            // btnToRight
            // 
            this.btnToRight.Location = new System.Drawing.Point(273, 110);
            this.btnToRight.Name = "btnToRight";
            this.btnToRight.Size = new System.Drawing.Size(57, 23);
            this.btnToRight.TabIndex = 2;
            this.btnToRight.Text = ">>";
            this.btnToRight.UseVisualStyleBackColor = true;
            this.btnToRight.Click += new System.EventHandler(this.btnToRight_Click);
            // 
            // btnDesSeleccion
            // 
            this.btnDesSeleccion.Location = new System.Drawing.Point(273, 140);
            this.btnDesSeleccion.Name = "btnDesSeleccion";
            this.btnDesSeleccion.Size = new System.Drawing.Size(57, 23);
            this.btnDesSeleccion.TabIndex = 3;
            this.btnDesSeleccion.Text = "<<";
            this.btnDesSeleccion.UseVisualStyleBackColor = true;
            this.btnDesSeleccion.Click += new System.EventHandler(this.btnDesSeleccion_Click);
            // 
            // btnClean
            // 
            this.btnClean.Location = new System.Drawing.Point(273, 170);
            this.btnClean.Name = "btnClean";
            this.btnClean.Size = new System.Drawing.Size(57, 23);
            this.btnClean.TabIndex = 4;
            this.btnClean.Text = "Reset";
            this.btnClean.UseVisualStyleBackColor = true;
            this.btnClean.Click += new System.EventHandler(this.btnClean_Click);
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(510, 352);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(75, 23);
            this.btnAceptar.TabIndex = 5;
            this.btnAceptar.Text = "&Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(16, 352);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 6;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // MenuPrepagas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(607, 387);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.btnClean);
            this.Controls.Add(this.btnDesSeleccion);
            this.Controls.Add(this.btnToRight);
            this.Controls.Add(this.lbxEleccionesCobertura);
            this.Controls.Add(this.lbxOpcionesCobertura);
            this.MaximizeBox = false;
            this.Name = "MenuPrepagas";
            this.Text = "MenuPrepagas";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lbxOpcionesCobertura;
        private System.Windows.Forms.ListBox lbxEleccionesCobertura;
        private System.Windows.Forms.Button btnToRight;
        private System.Windows.Forms.Button btnDesSeleccion;
        private System.Windows.Forms.Button btnClean;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnSalir;
    }
}