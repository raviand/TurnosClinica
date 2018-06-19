namespace MainMenu
{
    partial class CoberturaMedica
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CoberturaMedica));
            this.lblAgregarPlan = new System.Windows.Forms.Label();
            this.cbxServicioSalud = new System.Windows.Forms.ComboBox();
            this.tbxNuevoPlan = new System.Windows.Forms.TextBox();
            this.btnNuevoPlan = new System.Windows.Forms.Button();
            this.lblServicio = new System.Windows.Forms.Label();
            this.tbxServicio = new System.Windows.Forms.TextBox();
            this.btnNuevoServicio = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvPlanes = new System.Windows.Forms.DataGridView();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPlanes)).BeginInit();
            this.SuspendLayout();
            // 
            // lblAgregarPlan
            // 
            this.lblAgregarPlan.AutoSize = true;
            this.lblAgregarPlan.Location = new System.Drawing.Point(169, 79);
            this.lblAgregarPlan.Name = "lblAgregarPlan";
            this.lblAgregarPlan.Size = new System.Drawing.Size(88, 13);
            this.lblAgregarPlan.TabIndex = 0;
            this.lblAgregarPlan.Text = "Nombre del Plan:";
            // 
            // cbxServicioSalud
            // 
            this.cbxServicioSalud.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxServicioSalud.FormattingEnabled = true;
            this.cbxServicioSalud.Location = new System.Drawing.Point(35, 94);
            this.cbxServicioSalud.Name = "cbxServicioSalud";
            this.cbxServicioSalud.Size = new System.Drawing.Size(121, 21);
            this.cbxServicioSalud.TabIndex = 1;
            // 
            // tbxNuevoPlan
            // 
            this.tbxNuevoPlan.Location = new System.Drawing.Point(172, 94);
            this.tbxNuevoPlan.Name = "tbxNuevoPlan";
            this.tbxNuevoPlan.Size = new System.Drawing.Size(149, 20);
            this.tbxNuevoPlan.TabIndex = 2;
            // 
            // btnNuevoPlan
            // 
            this.btnNuevoPlan.Location = new System.Drawing.Point(327, 92);
            this.btnNuevoPlan.Name = "btnNuevoPlan";
            this.btnNuevoPlan.Size = new System.Drawing.Size(75, 23);
            this.btnNuevoPlan.TabIndex = 3;
            this.btnNuevoPlan.Text = "&Agregar";
            this.btnNuevoPlan.UseVisualStyleBackColor = true;
            this.btnNuevoPlan.Click += new System.EventHandler(this.btnNuevoPlan_Click);
            // 
            // lblServicio
            // 
            this.lblServicio.AutoSize = true;
            this.lblServicio.Location = new System.Drawing.Point(35, 78);
            this.lblServicio.Name = "lblServicio";
            this.lblServicio.Size = new System.Drawing.Size(119, 13);
            this.lblServicio.TabIndex = 4;
            this.lblServicio.Text = "Seleccione un Servicio:";
            // 
            // tbxServicio
            // 
            this.tbxServicio.Location = new System.Drawing.Point(174, 31);
            this.tbxServicio.Name = "tbxServicio";
            this.tbxServicio.Size = new System.Drawing.Size(148, 20);
            this.tbxServicio.TabIndex = 5;
            // 
            // btnNuevoServicio
            // 
            this.btnNuevoServicio.Location = new System.Drawing.Point(328, 28);
            this.btnNuevoServicio.Name = "btnNuevoServicio";
            this.btnNuevoServicio.Size = new System.Drawing.Size(75, 23);
            this.btnNuevoServicio.TabIndex = 6;
            this.btnNuevoServicio.Text = "&Nuevo ";
            this.btnNuevoServicio.UseVisualStyleBackColor = true;
            this.btnNuevoServicio.Click += new System.EventHandler(this.btnNuevoServicio_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(154, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Ingrese nuevo Servicio Medico";
            // 
            // dgvPlanes
            // 
            this.dgvPlanes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPlanes.ColumnHeadersVisible = false;
            this.dgvPlanes.Location = new System.Drawing.Point(17, 142);
            this.dgvPlanes.Name = "dgvPlanes";
            this.dgvPlanes.ReadOnly = true;
            this.dgvPlanes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvPlanes.Size = new System.Drawing.Size(386, 267);
            this.dgvPlanes.TabIndex = 8;
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(326, 415);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(75, 23);
            this.btnEliminar.TabIndex = 9;
            this.btnEliminar.Text = "&Eliminar";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(17, 414);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 10;
            this.btnSalir.Text = "&Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            // 
            // CoberturaMedica
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.HighlightText;
            this.ClientSize = new System.Drawing.Size(415, 450);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.dgvPlanes);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnNuevoServicio);
            this.Controls.Add(this.tbxServicio);
            this.Controls.Add(this.lblServicio);
            this.Controls.Add(this.btnNuevoPlan);
            this.Controls.Add(this.tbxNuevoPlan);
            this.Controls.Add(this.cbxServicioSalud);
            this.Controls.Add(this.lblAgregarPlan);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "CoberturaMedica";
            this.Text = "CoberturaMedica";
            this.Load += new System.EventHandler(this.CoberturaMedica_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPlanes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblAgregarPlan;
        private System.Windows.Forms.ComboBox cbxServicioSalud;
        private System.Windows.Forms.TextBox tbxNuevoPlan;
        private System.Windows.Forms.Button btnNuevoPlan;
        private System.Windows.Forms.Label lblServicio;
        private System.Windows.Forms.TextBox tbxServicio;
        private System.Windows.Forms.Button btnNuevoServicio;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvPlanes;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnSalir;
    }
}