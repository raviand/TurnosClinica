using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data.SqlClient;

namespace Negocio
{
    public class ProfesionalNegocio
    {
        Profesional profesional;
        Conexion conn;
        GeneralNegocio gn;

        public ProfesionalNegocio()
        {
            profesional = new Profesional();
            conn = new Conexion();
            gn = new GeneralNegocio();
        }

        public void setPaciente(Profesional profesional)
        {
            throw new NotImplementedException();
        }

        public int cargarPaciente(Profesional profesional)
        {
            throw new NotImplementedException();
        }

        public Dictionary<int, String> listarHorarios()
        {
            Dictionary<int, String> horarios = new Dictionary<int, String>();
            SqlDataReader lector;
            try
            {
                lector = conn.lector("SELECT ID, ATENCION FROM ATENCION_PROFESIONAL");
                while (lector.Read())
                {
                    horarios.Add(lector.GetInt32(0), lector.GetString(1));
                }
                return horarios;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
