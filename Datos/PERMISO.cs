namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PERMISOS")]
    public partial class PERMISO
    {
        public int ID { get; set; }

        [Column("PERMISO")]
        [Required]
        [StringLength(1)]
        public string PERMISO1 { get; set; }

        [Required]
        [StringLength(20)]
        public string NOMBRE { get; set; }
    }
}
