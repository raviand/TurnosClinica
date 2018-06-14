namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PROFESIONALES_ESPECIALIDADES
    {
        public int ID { get; set; }

        public int ID_PROFESIONAL { get; set; }

        public int ID_ESPECIALIDAD { get; set; }

        public virtual ESPECIALIDADE ESPECIALIDADE { get; set; }

        public virtual PROFESIONALE PROFESIONALE { get; set; }
    }
}
