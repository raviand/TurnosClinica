namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class COBERTURAS_MEDICAS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public COBERTURAS_MEDICAS()
        {
            COBERTURA_PROFESIONAL = new HashSet<COBERTURA_PROFESIONAL>();
            PLANES = new HashSet<PLANE>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(40)]
        public string NOMBRE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COBERTURA_PROFESIONAL> COBERTURA_PROFESIONAL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PLANE> PLANES { get; set; }
    }
}
