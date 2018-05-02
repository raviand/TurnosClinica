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
        public Horarios Horarios { get; set; }
        public List<String> Especialidades { get; set; }
        public List<ServicioMedico> ServiciosHabilitados { get; set; }
    }
}
