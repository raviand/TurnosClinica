using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Telefono
    {
        public String Numero { get; set; }
        public String Tipo { get; set; }
        public override string ToString()
        {
            return Numero;
        }
    }
}
