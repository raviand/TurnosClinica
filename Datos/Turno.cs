using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    class Turno
    {
        public DateTime FechaTurno { get; set; }
        public int IdTurno { get; set; }
        public String Estado { get; set; }
        public Paciente Paciente { get; set; }
        public Profesional Profesional { get; set; }
        public String Especialidad { get; set; }
        public Cancela Cancela { get; set; }
    }
}
