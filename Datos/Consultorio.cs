using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    class Consultorio
    {
        public int IdConsultorio { get; set; }
        public Direccion Direccion { get; set; }
        public Telefono Telefono { get; set; }
        public List<String> Especialidades { get; set; }
        public List<Profesional> Profecionales { get; set; }
        public Horarios Horarios { get; set; }
    }
}
