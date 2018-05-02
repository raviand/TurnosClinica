using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Atencion
    {
        public DateTime FechaAtencion { get; set; }
        public Profesional Profesional { get; set; }
        public String Especialidad { get; set; }
        public List<Indicacion> Indicacion { get; set; }
        public DateTime ProximoTurno { get; set; }
        public Internado Internado { get; set; }
       
    }
}
