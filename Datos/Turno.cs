using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Turno
    {
        public DateTime FechaTurno { get; set; }
        public DateTime FechaSolicitud { get; set; }
        public String IdTurno { get; set; }
        public String idEstado { get; set; }
        public String Estado { get; set; }
        public String idPaciente { get; set; }
        public String ApellidoPaciente { get; set; }
        public String NombrePaciente { get; set; }
        public String idProfesional { get; set; }
        public String ApellidoProfesional { get; set; }
        public String NombreProfesional { get; set; }
        public String idEspecialidad { get; set; }
        public String Especialidad { get; set; }
    }
}
