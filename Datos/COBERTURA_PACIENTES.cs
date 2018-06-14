namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class COBERTURA_PACIENTES
    {
        public int ID { get; set; }

        public int? NUMERO_CREDENCIAL { get; set; }

        public int ID_PACIENTE { get; set; }

        public int? ID_PLAN { get; set; }

        public virtual PACIENTE PACIENTE { get; set; }

        public virtual PLANE PLANE { get; set; }
    }
}
