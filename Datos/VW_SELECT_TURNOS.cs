namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class VW_SELECT_TURNOS
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_PACI { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(60)]
        public string NOMBRE_PACIENTE { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(60)]
        public string APELLIDO_PACIENTE { get; set; }

        [Key]
        [Column(Order = 3, TypeName = "date")]
        public DateTime FECHA_TURNO { get; set; }

        [Key]
        [Column(Order = 4)]
        public TimeSpan HORA_TURNO { get; set; }

        [Key]
        [Column(Order = 5)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_ESP { get; set; }

        [Key]
        [Column(Order = 6)]
        [StringLength(30)]
        public string ESPECIALIDAD { get; set; }

        [Key]
        [Column(Order = 7)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_ESTADO { get; set; }

        [StringLength(15)]
        public string ESTADO { get; set; }

        [Key]
        [Column(Order = 8)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_PRO { get; set; }

        [Key]
        [Column(Order = 9)]
        [StringLength(40)]
        public string NOMBRE_PROFESIONAL { get; set; }

        [Key]
        [Column(Order = 10)]
        [StringLength(40)]
        public string APELLIDO_PROFESIONAL { get; set; }

        [Key]
        [Column(Order = 11)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }
    }
}
