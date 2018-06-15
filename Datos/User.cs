using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class User
    {
        public int idUser { get; set; }
        public String Usuario { get; set; }
        public String Pass { get; set; }
        public int idProfesional { get; set; }
        public int idPermiso { get; set; }
        public char TipoPermiso { get; set; }
        public String NombrePermiso { get; set; }
        public String NombreProfesional { get; set; }
    }
}
