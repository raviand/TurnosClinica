namespace MainMenu
{
    partial class TurnosForm
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
            this.dgvTurnos = new System.Windows.Forms.DataGridView();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnNuevoTurno = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnos)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvTurnos
            // 
            this.dgvTurnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTurnos.Location = new System.Drawing.Point(13, 124);
            this.dgvTurnos.Name = "dgvTurnos";
            this.dgvTurnos.Size = new System.Drawing.Size(775, 341);
            this.dgvTurnos.TabIndex = 0;
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(13, 477);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 1;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            // 
            // btnNuevoTurno
            // 
            this.btnNuevoTurno.Location = new System.Drawing.Point(713, 477);
            this.btnNuevoTurno.Name = "btnNuevoTurno";
            this.btnNuevoTurno.Size = new System.Drawing.Size(75, 23);
            this.btnNuevoTurno.TabIndex = 2;
            this.btnNuevoTurno.Text = "&Nuevo";
            this.btnNuevoTurno.UseVisualStyleBackColor = true;
            // 
            // TurnosForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 512);
            this.Controls.Add(this.btnNuevoTurno);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.dgvTurnos);
            this.Name = "TurnosForm";
            this.Text = "TurnosForm";
            ((System.ComponentModel.ISupportInitialize)(this.dgvTurnos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTurnos;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnNuevoTurno;
    }
}