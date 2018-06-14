namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PACIENTE_TELEFONOS
    {
        public int ID { get; set; }

        public int ID_PACIENTE { get; set; }

        public int NUMERO { get; set; }

        public virtual PACIENTE PACIENTE { get; set; }

        public virtual TELEFONO TELEFONO { get; set; }
    }
}
