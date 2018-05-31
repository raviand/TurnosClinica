namespace MainMenu
{
    partial class FormEspecialidades
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
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.btnClean = new System.Windows.Forms.Button();
            this.btnDesSeleccion = new System.Windows.Forms.Button();
            this.btnToRight = new System.Windows.Forms.Button();
            this.lbxEleccionesEspecialidades = new System.Windows.Forms.ListBox();
            this.lbxOpcionesEspecialidades = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(12, 374);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 13;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click_1);
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(506, 374);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(75, 23);
            this.btnAceptar.TabIndex = 12;
            this.btnAceptar.Text = "&Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click_1);
            // 
            // btnClean
            // 
            this.btnClean.Location = new System.Drawing.Point(269, 192);
            this.btnClean.Name = "btnClean";
            this.btnClean.Size = new System.Drawing.Size(57, 23);
            this.btnClean.TabIndex = 11;
            this.btnClean.Text = "Reset";
            this.btnClean.UseVisualStyleBackColor = true;
            this.btnClean.Click += new System.EventHandler(this.btnClean_Click_1);
            // 
            // btnDesSeleccion
            // 
            this.btnDesSeleccion.Location = new System.Drawing.Point(269, 162);
            this.btnDesSeleccion.Name = "btnDesSeleccion";
            this.btnDesSeleccion.Size = new System.Drawing.Size(57, 23);
            this.btnDesSeleccion.TabIndex = 10;
            this.btnDesSeleccion.Text = "<<";
            this.btnDesSeleccion.UseVisualStyleBackColor = true;
            this.btnDesSeleccion.Click += new System.EventHandler(this.btnDesSeleccion_Click_1);
            // 
            // btnToRight
            // 
            this.btnToRight.Location = new System.Drawing.Point(269, 132);
            this.btnToRight.Name = "btnToRight";
            this.btnToRight.Size = new System.Drawing.Size(57, 23);
            this.btnToRight.TabIndex = 9;
            this.btnToRight.Text = ">>";
            this.btnToRight.UseVisualStyleBackColor = true;
            this.btnToRight.Click += new System.EventHandler(this.btnToRight_Click_1);
            // 
            // lbxEleccionesEspecialidades
            // 
            this.lbxEleccionesEspecialidades.FormattingEnabled = true;
            this.lbxEleccionesEspecialidades.Location = new System.Drawing.Point(332, 62);
            this.lbxEleccionesEspecialidades.Name = "lbxEleccionesEspecialidades";
            this.lbxEleccionesEspecialidades.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.lbxEleccionesEspecialidades.Size = new System.Drawing.Size(250, 290);
            this.lbxEleccionesEspecialidades.TabIndex = 8;
            // 
            // lbxOpcionesEspecialidades
            // 
            this.lbxOpcionesEspecialidades.FormattingEnabled = true;
            this.lbxOpcionesEspecialidades.Location = new System.Drawing.Point(12, 62);
            this.lbxOpcionesEspecialidades.Name = "lbxOpcionesEspecialidades";
            this.lbxOpcionesEspecialidades.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.lbxOpcionesEspecialidades.Size = new System.Drawing.Size(250, 290);
            this.lbxOpcionesEspecialidades.TabIndex = 7;
            // 
            // FormEspecialidades
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(613, 411);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.btnClean);
            this.Controls.Add(this.btnDesSeleccion);
            this.Controls.Add(this.btnToRight);
            this.Controls.Add(this.lbxEleccionesEspecialidades);
            this.Controls.Add(this.lbxOpcionesEspecialidades);
            this.Name = "FormEspecialidades";
            this.Text = "FormEspecialidades";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnClean;
        private System.Windows.Forms.Button btnDesSeleccion;
        private System.Windows.Forms.Button btnToRight;
        private System.Windows.Forms.ListBox lbxEleccionesEspecialidades;
        private System.Windows.Forms.ListBox lbxOpcionesEspecialidades;
    }
}