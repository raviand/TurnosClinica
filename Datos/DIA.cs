namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DIAS")]
    public partial class DIA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DIA()
        {
            DIA_ATENCION_PROFESIONAL = new HashSet<DIA_ATENCION_PROFESIONAL>();
        }

        public int ID { get; set; }

        [StringLength(15)]
        public string NOMBRE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DIA_ATENCION_PROFESIONAL> DIA_ATENCION_PROFESIONAL { get; set; }
    }
}
