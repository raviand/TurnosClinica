namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PROFESIONALES_TELEFONOS
    {
        public int ID { get; set; }

        public int ID_PROFESIONALES { get; set; }

        public int NUMERO { get; set; }

        public virtual PROFESIONALE PROFESIONALE { get; set; }

        public virtual TELEFONO TELEFONO { get; set; }
    }
}
