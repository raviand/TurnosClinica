namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class VW_BUSCAR_PACIENTES
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_PACIENTE { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(60)]
        public string NOMBRE { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(60)]
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

        [Key]
        [Column(Order = 5, TypeName = "date")]
        public DateTime FECHA_NACIMIENTO { get; set; }

        [Key]
        [Column(Order = 6, TypeName = "date")]
        public DateTime FECHA_INGRESO { get; set; }

        public int? ID_LOCALIDAD { get; set; }

        [StringLength(255)]
        public string LOCALIDAD { get; set; }

        public int? ID_PROVINCIA { get; set; }

        [StringLength(255)]
        public string PROVINCIA { get; set; }

        public int? NUMERO_CREDENCIAL { get; set; }

        public int? ID_PLAN { get; set; }

        public int? ID_COBERTURA { get; set; }

        [StringLength(40)]
        public string COBERTURA { get; set; }

        [StringLength(40)]
        public string NOMBRE_PLAN { get; set; }

        public bool? ELIMINADO { get; set; }
    }
}
