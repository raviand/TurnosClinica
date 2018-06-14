namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("INTERNACIONES")]
    public partial class INTERNACIONE
    {
        public int ID { get; set; }

        public int ID_PACIENTE { get; set; }

        [Required]
        [StringLength(200)]
        public string DIAGNOSTICO { get; set; }

        [StringLength(200)]
        public string OBSERVACION_ALTA { get; set; }

        public int ID_ESPECIALIDAD { get; set; }

        public int ID_DERIVADOR { get; set; }

        [Column(TypeName = "date")]
        public DateTime ENTRADA { get; set; }

        [Column(TypeName = "date")]
        public DateTime? SALIDA { get; set; }

        public virtual ESPECIALIDADE ESPECIALIDADE { get; set; }

        public virtual PROFESIONALE PROFESIONALE { get; set; }

        public virtual PACIENTE PACIENTE { get; set; }
    }
}
