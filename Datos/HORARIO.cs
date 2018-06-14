namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HORARIOS")]
    public partial class HORARIO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HORARIO()
        {
            CONSULTORIOS = new HashSet<CONSULTORIO>();
        }

        public int ID { get; set; }

        public int HORA_ABRE { get; set; }

        public int HORA_CIERRA { get; set; }

        public int? HORA_CORTE { get; set; }

        public int? HORA_CORTE_FIN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CONSULTORIO> CONSULTORIOS { get; set; }
    }
}
