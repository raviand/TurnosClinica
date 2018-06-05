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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Principal));
            this.btnVerAgenda = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnVerAgenda
            // 
            this.btnVerAgenda.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnVerAgenda.BackgroundImage")));
            this.btnVerAgenda.Location = new System.Drawing.Point(199, 384);
            this.btnVerAgenda.Name = "btnVerAgenda";
            this.btnVerAgenda.Size = new System.Drawing.Size(210, 54);
            this.btnVerAgenda.TabIndex = 4;
            this.btnVerAgenda.UseVisualStyleBackColor = true;
            this.btnVerAgenda.Click += new System.EventHandler(this.btnVerAgenda_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(619, 450);
            this.Controls.Add(this.btnVerAgenda);
            this.Name = "Principal";
            this.Text = "Agenda Turnos";
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnVerAgenda;
    }
}

