namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PLANES")]
    public partial class PLANE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PLANE()
        {
            COBERTURA_PACIENTES = new HashSet<COBERTURA_PACIENTES>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(40)]
        public string NOMBRE { get; set; }

        public int ID_COBERTURA { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COBERTURA_PACIENTES> COBERTURA_PACIENTES { get; set; }

        public virtual COBERTURAS_MEDICAS COBERTURAS_MEDICAS { get; set; }
    }
}
