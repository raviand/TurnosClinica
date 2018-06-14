namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CV_SELECT_PROFESIONALES
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(40)]
        public string NOMBRE { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(40)]
        public string APELLIDO { get; set; }

        [Key]
        [Column(Order = 3)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DNI { get; set; }

        [StringLength(60)]
        public string CALLE { get; set; }

        public int? PISO { get; set; }

        [StringLength(5)]
        public string DEPARTAMENTO { get; set; }

        public int? CP { get; set; }

        [Key]
        [Column(Order = 4)]
        [StringLength(60)]
        public string MAIL { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FECHA_NACIMIENTO { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FECHA_INGRESO { get; set; }

        [Key]
        [Column(Order = 5)]
        public bool ATIENDE_DOMICILIO { get; set; }

        [StringLength(255)]
        public string provincia { get; set; }

        [StringLength(255)]
        public string localidad { get; set; }
    }
}
