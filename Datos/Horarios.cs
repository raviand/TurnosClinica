using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Horarios
    {
        public int HoraEntrada { get; set; }
        public int HoraSalida { get; set; }
        public int HoraInicioCorte { get; set; }
        public int HoraFinalCorte { get; set; }
        public List<String> DiasDisponibles { get; set; }
    }
}
