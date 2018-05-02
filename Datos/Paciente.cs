using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Paciente : Persona
    {
        public DateTime FechaIngreso { get; set; }
        public int IdPaciente { get; set; }
        public List<Atencion> HistoriaMedica { get; set; }
        public ServicioMedico CobreturaMedica { get; set; }

        public override string ToString()
        {
            String datos;
            datos = "Id: " + IdPaciente + "\n";
            datos += base.ToString();
            datos += "Fecha ingreso: " + FechaIngreso.ToShortDateString() + "\n";
            datos += CobreturaMedica.ToString() + "\n";

            return datos;
        }
    }
}
