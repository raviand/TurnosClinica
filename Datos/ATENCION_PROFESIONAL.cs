namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ATENCION_PROFESIONAL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ATENCION_PROFESIONAL()
        {
            DIA_ATENCION_PROFESIONAL = new HashSet<DIA_ATENCION_PROFESIONAL>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(20)]
        public string ATENCION { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DIA_ATENCION_PROFESIONAL> DIA_ATENCION_PROFESIONAL { get; set; }
    }
}
