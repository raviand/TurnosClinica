using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data.SqlClient;
namespace Negocio
{
    public class UserNegocios
    {
        public User user { get; set; }
        Conexion conn;

        public UserNegocios()
        {
            conn = new Conexion();
            user = new User();
            user.idProfesional = 0;
        }

        public List<User> listarUsuarios()
        {
            //ID, USUARIO, PASS, ID_PERMISOS, ID_PROFESIONAL, NOMBRE, PERMISO, NOMBRE, APELLIDO
            List<User> users = new List<User>();
            String query = "EXEC SP_USUARIOS";
            SqlDataReader lector;
            try
            {
                lector = conn.lector(query);
                while (lector.Read())
                {
                    user = new User();
                    user.idUser = lector.GetInt32(0);
                    user.Usuario = lector.GetString(1);
                    user.Pass = lector.GetString(2);
                    user.idPermiso = lector.GetInt32(3);
                    if(!lector.IsDBNull(4))
                        user.idProfesional = lector.GetInt32(4);
                    user.NombrePermiso = lector.GetString(5);
                    user.TipoPermiso = Convert.ToChar( lector.GetString(6));
                    if(!lector.IsDBNull(4))
                        user.NombreProfesional = $"{lector.GetString(8)}, {lector.GetString(7)}";
                    users.Add(user);
                }
                return users;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void cargarUsuario()
        {
            /*
                @USUARIO VARCHAR(40),
                @PASS VARCHAR(40),
                @ID_PERMISO INT,
                @ID_PROFESIONAL INT = 0 
             */
            String query;
            if (user.idProfesional != 0)
            {
                query = $"EXEC SP_NUEVO_USUARIO {user.Usuario}, {user.Pass}, {user.idPermiso}, {user.idProfesional}";
            }
            else
            {
                query = $"EXEC SP_NUEVO_USUARIO {user.Usuario}, {user.Pass}, {user.idPermiso}";
            }

            try
            {
                conn.accion(query);
            }catch(Exception ex)
            {
                throw ex;
            }
        }

        public List<Permisos> listarPermisos()
        {
            List<Permisos> permisos = new List<Permisos>();
            Permisos permiso;
            String query = "SELECT ID, PERMISO, NOMBRE FROM PERMISOS";
            SqlDataReader lector;
            try
            {
                lector = conn.lector(query);
                while (lector.Read())
                {
                    permiso = new Permisos();
                    permiso.idTipo = lector.GetInt32(0);
                    permiso.tipoPermiso =Convert.ToChar( lector.GetString(1));
                    permiso.Nombre = lector.GetString(2);
                    permisos.Add(permiso);
                }
                return permisos;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public bool eliminarUsuario()
        {
            String query = "DELETE USUARIOS WHERE ID = " + user.idUser;

            try
            {
                int res = conn.accion(query);
                if (res > 0)
                    return true;
                else
                    return false;
            }catch(Exception ex)
            {
                throw ex;
            }
        }


    }
}
