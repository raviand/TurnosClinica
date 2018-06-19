using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class ServicioMedico
    {
        public int idServicio { get; set; }
        public String Nombre { get; set; }
        public int idPlan { get; set; }
        public String Plan { get; set; }
        public String NumeroCredencial { get; set; }

        public override string ToString()
        {
            if (Nombre != null)
                return  Nombre + " - " + Plan;
            else
                return "No especifica";
        }
    }
}
