namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class VW_DIAS_ATENCION
    {
        [StringLength(15)]
        public string DIA { get; set; }

        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string TURNO { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(40)]
        public string NOMBRE { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(40)]
        public string APELLIDO { get; set; }
    }
}
