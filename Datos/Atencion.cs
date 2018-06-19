using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Atencion
    {
        public int idAtencion { get; set; }
        public DateTime FechaAtencion { get; set; }
        public Profesional Profesional { get; set; }
        public Paciente paciente { get; set; }
        public Especialidad Especialidad { get; set; }
       // public List<Indicacion> Indicacion { get; set; }
       // public DateTime ProximoTurno { get; set; }
        public String   indicacion { get; set; }
       
    }
}
