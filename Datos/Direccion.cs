using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Direccion
    {
        public String Calle { get; set; }
        public int Piso { get; set; }
        public String Departamento { get; set; }
        public String Localidad { get; set; }
        public int CodigoPostal { get; set; }
        public String Provincia { get; set; }

        public override string ToString()
        {
            String cadena;
            cadena = Calle + " ";
            if (Piso != null) cadena += "P: " + Piso + ", ";
            if (Departamento != null) cadena += "D: " + Departamento + ", ";
            if (CodigoPostal != null) cadena += "CP: " + CodigoPostal + ", ";
            cadena += Localidad;

            return cadena;
        }
    }
}
