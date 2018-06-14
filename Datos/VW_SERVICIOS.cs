namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class VW_SERVICIOS
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_COBERTURA { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(40)]
        public string NOMBRE { get; set; }
    }
}
