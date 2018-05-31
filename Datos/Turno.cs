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
        public KeyValuePair<int , String> Estado { get; set; }
        public KeyValuePair<int ,String> Paciente { get; set; }
        public String NombrePaciente { get; set; }
        public KeyValuePair<int,String> Profesional { get; set; }
        public String NombreProfesional { get; set; }
        public KeyValuePair<int, String> Especialidad { get; set; }
        public Cancela Cancela { get; set; }
    }
}
