using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public abstract class Persona
    {
        public Persona()
        {
            Dir = new Direccion();
            Telefonos = new List<Telefono>();
        }
        public String Nombre { get; set; }
        public String Apellido { get; set; }
        public DateTime FechaNac { get; set; }
        public String Dni { get; set; }
        public List<Telefono> Telefonos { get; set; }
        public Direccion Dir { get; set; }
        public String  Mail { get; set; }

        public override string ToString()
        {
            String datos;
            datos = $"{Apellido}, {Nombre}";
            return datos;
        }
    }
}
