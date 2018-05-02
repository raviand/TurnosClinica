using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class ServicioMedico
    {
        public String Nombre { get; set; }
        public String Plan { get; set; }
        public int NumeroCredencial { get; set; }

        public override string ToString()
        {
            if (Nombre != null)
                return NumeroCredencial + " - " + Nombre + " - " + Plan;
            else
                return "No especifica";
        }
    }
}
