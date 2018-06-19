using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Profesional: Persona
    {
        public int IdProfesional { get; set; }
        public Dictionary<int , String> Atencion { get; set; }
        public DateTime FechaIngreso { get; set; }
        public String TelefonoPrincipal { get; set; }
        public Dictionary<int , String> Especialidades { get; set; }
        public List<ServicioMedico> ServiciosHabilitados { get; set; }
        public bool AtiendeADomicilio { get; set; }

        public override string ToString()
        {
            return $"{IdProfesional} - {base.ToString()}";
        }
    }
}
