namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("USUARIOS")]
    public partial class USUARIO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USUARIO()
        {
            CANCELACIONES = new HashSet<CANCELACIONE>();
        }

        public int ID { get; set; }

        [Column("USUARIO")]
        [Required]
        [StringLength(40)]
        public string USUARIO1 { get; set; }

        [Required]
        [StringLength(40)]
        public string PASS { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CANCELACIONE> CANCELACIONES { get; set; }
    }
}
