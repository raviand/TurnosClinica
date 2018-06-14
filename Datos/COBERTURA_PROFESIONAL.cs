namespace Datos
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class COBERTURA_PROFESIONAL
    {
        public int ID { get; set; }

        public int ID_PROFESIONAL { get; set; }

        public int ID_COBERTURA { get; set; }

        public virtual COBERTURAS_MEDICAS COBERTURAS_MEDICAS { get; set; }

        public virtual PROFESIONALE PROFESIONALE { get; set; }
    }
}
