namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ESPECIALIDADES")]
    public partial class ESPECIALIDADE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ESPECIALIDADE()
        {
            INTERNACIONES = new HashSet<INTERNACIONE>();
            PROFESIONALES_ESPECIALIDADES = new HashSet<PROFESIONALES_ESPECIALIDADES>();
            TURNOS = new HashSet<TURNO>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(30)]
        public string NOMBRE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<INTERNACIONE> INTERNACIONES { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PROFESIONALES_ESPECIALIDADES> PROFESIONALES_ESPECIALIDADES { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TURNO> TURNOS { get; set; }
    }
}
