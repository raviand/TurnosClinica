namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class DIA_ATENCION_PROFESIONAL
    {
        public int ID { get; set; }

        public int ID_PROFESIONAL { get; set; }

        public int ID_DIA { get; set; }

        public int ID_ATENCION { get; set; }

        public virtual ATENCION_PROFESIONAL ATENCION_PROFESIONAL { get; set; }

        public virtual DIA DIA { get; set; }

        public virtual PROFESIONALE PROFESIONALE { get; set; }
    }
}
