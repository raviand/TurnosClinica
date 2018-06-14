namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PROFESIONALES")]
    public partial class PROFESIONALE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PROFESIONALE()
        {
            ATENCIONs = new HashSet<ATENCION>();
            COBERTURA_PROFESIONAL = new HashSet<COBERTURA_PROFESIONAL>();
            DIA_ATENCION_PROFESIONAL = new HashSet<DIA_ATENCION_PROFESIONAL>();
            INTERNACIONES = new HashSet<INTERNACIONE>();
            PROFESIONALES_TELEFONOS = new HashSet<PROFESIONALES_TELEFONOS>();
            PROFESIONALES_ESPECIALIDADES = new HashSet<PROFESIONALES_ESPECIALIDADES>();
            TURNOS = new HashSet<TURNO>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(40)]
        public string NOMBRE { get; set; }

        [Required]
        [StringLength(40)]
        public string APELLIDO { get; set; }

        public int DNI { get; set; }

        [StringLength(60)]
        public string CALLE { get; set; }

        public int? ID_LOCALIDAD { get; set; }

        [Required]
        [StringLength(60)]
        public string MAIL { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FECHA_INGRESO { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FECHA_NACIMIENTO { get; set; }

        public int? PISO { get; set; }

        [StringLength(5)]
        public string DEPARTAMENTO { get; set; }

        public int? CP { get; set; }

        public bool ATIENDE_DOMICILIO { get; set; }

        public bool? ELIMINADO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ATENCION> ATENCIONs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COBERTURA_PROFESIONAL> COBERTURA_PROFESIONAL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DIA_ATENCION_PROFESIONAL> DIA_ATENCION_PROFESIONAL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<INTERNACIONE> INTERNACIONES { get; set; }

        public virtual localidade localidade { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PROFESIONALES_TELEFONOS> PROFESIONALES_TELEFONOS { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PROFESIONALES_ESPECIALIDADES> PROFESIONALES_ESPECIALIDADES { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TURNO> TURNOS { get; set; }
    }
}
