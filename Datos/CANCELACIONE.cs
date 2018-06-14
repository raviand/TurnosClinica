namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CANCELACIONES")]
    public partial class CANCELACIONE
    {
        public int ID { get; set; }

        [Column(TypeName = "date")]
        public DateTime FECHA { get; set; }

        public int ID_USUARIO { get; set; }

        [StringLength(80)]
        public string COMENTARIO { get; set; }

        public int ID_TURNO { get; set; }

        public virtual TURNO TURNO { get; set; }

        public virtual USUARIO USUARIO { get; set; }
    }
}
