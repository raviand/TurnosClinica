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
        public Profesional Profesional { get; set; }

        Conexion conn;
        GeneralNegocio gn;

        public ProfesionalNegocio()
        {
            Profesional = new Profesional();
            Profesional.Dir = new Direccion();
            Profesional.Atencion = new Dictionary<int, String>();
            Profesional.Especialidades = new Dictionary<int, string>();
            Profesional.ServiciosHabilitados = new List<ServicioMedico>();
            Profesional.Telefonos = new List<Telefono>();
            conn = new Conexion();
            gn = new GeneralNegocio();
        }

        public int cargarProfesional()
        {
            int res;
            String query;
            bool pisoExist = false;
            bool deptoExist = false;
            bool cpExist = false;
            String domicilio = Profesional.AtiendeADomicilio ? "1" : "0";
            try
            {
                query = "BEGIN TRANSACTION ";

                query += "DECLARE @DataID int; ";
                query += "set dateformat dmy INSERT INTO PROFESIONALES( ATIENDE_DOMICILIO , ID_LOCALIDAD, NOMBRE, APELLIDO, DNI, MAIL, FECHA_NACIMIENTO, FECHA_INGRESO, CALLE";
                if (Profesional.Dir.Departamento != null)
                {
                    deptoExist = true;
                    query += ", DEPARTAMENTO";
                }
                if (Profesional.Dir.Piso != null)
                {
                    pisoExist = true;
                    query += ", PISO";
                }
                if (Profesional.Dir.CodigoPostal != null)
                {
                    cpExist = true;
                    query += ", CP";
                }
                query += ") VALUES ( " + domicilio +
                    ", " + Profesional.Dir.Localidad + " ,'" + Profesional.Nombre +
                    "', '" + Profesional.Apellido +
                    "', " + Profesional.Dni +
                    ", '" + Profesional.Mail +
                    "', '" + Profesional.FechaNac.ToShortDateString() +
                    "', '" + DateTime.Today.ToShortDateString() +
                    "', '" + Profesional.Dir.Calle +
                    "' ";

                if (deptoExist) query += ", '" + Profesional.Dir.Departamento + "' ";
                if (pisoExist) query += ", " + Profesional.Dir.Piso + " ";
                if (cpExist) query += ", " + Profesional.Dir.CodigoPostal + " ";


                query += "); ";
                query += " SET @DataID = scope_identity(); ";

                query += cargaTelefonos(Profesional.Telefonos);
                query += cargaAtencion();
                query += cargaPrepagas();
                query += cargaEspecialidades();

                query += "COMMIT";
                res = conn.accion(query);


                return res;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.close();
            }

        }

        public String cargaTelefonos(List<Telefono> telefonos)
        {
            String query = "INSERT INTO TELEFONO (NUMERO, TIPO) VALUES ";
            foreach (Telefono telefono in telefonos)
                query += "(" + telefono.Numero + ", " + telefono.Tipo + ") ,";

            query = query.Remove(query.Length - 2, 2);
            query += "; ";
            query += "INSERT INTO PROFESIONALES_TELEFONOS (ID_PROFESIONALES, NUMERO) VALUES ";

            foreach (Telefono telefono in telefonos)
                query += "( @DataID, " + telefono.Numero + ") ,";

            query = query.Remove(query.Length - 2, 2);
            query += "; ";

            return query;
        }

        public String cargaAtencion()
        {
            String query = "INSERT INTO DIA_ATENCION_PROFESIONAL " +
                "( ID_PROFESIONAL , ID_DIA , ID_ATENCION ) VALUES ";

            foreach (var pair in Profesional.Atencion)
                query += "( @DataID , " + pair.Key + ", " + pair.Value + " ) ,";

            query = query.Remove(query.Length - 2, 2);
            query += "; ";

            return query;
        }

        public String cargaPrepagas()
        {
            String query = "INSERT INTO COBERTURA_PROFESIONAL " +
                "  ( ID_PROFESIONAL, ID_COBERTURA ) VALUES ";

            foreach (ServicioMedico pair in Profesional.ServiciosHabilitados)
            {
                query += "( @DataID , " + pair.Nombre + ") ,";
            }
            query = query.Remove(query.Length - 2, 2);
            query += "; ";
            return query;
        }

        public String cargaEspecialidades()
        {
            String query = "INSERT INTO PROFESIONALES_ESPECIALIDADES( ID_PROFESIONAL , ID_ESPECIALIDAD ) VALUES ";
            foreach (KeyValuePair<int, String> pair in Profesional.Especialidades)
            {
                query += "( @DataID , " + pair.Key + " ) ,";
            }
            query = query.Remove(query.Length - 2, 2);
            query += "; ";
            return query;
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
            finally
            {
                conn.close();
            }
        }

        public Dictionary<int, String> getEspecialidades()
        {
            /**
             * Aca falta el metodo que llama a la tabla para listar las Especialidades
             * */
            Dictionary<int, String> especialidades = new Dictionary<int, string>();
            SqlDataReader lector;
            try
            {
                lector = conn.lector("SELECT ID , NOMBRE FROM ESPECIALIDADES");
                while (lector.Read())
                    especialidades.Add(lector.GetInt32(0), lector.GetString(1));

                return especialidades;
            } catch (Exception ex)
            {
                throw ex;
            }

        }

        /**
         * Metodo para modificar el profesional seleccionado
         * faltan las ventanas secundarias (telefono, prepagas, especialidades, ¿horarios?)
         * */
        public int modificarProfesionales()
        {
            String query;
            int ret = 0;
            try
            {
                conn.agregarParametro("@ID", Profesional.IdProfesional);
                conn.agregarParametro("@NOMBRE", Profesional.Nombre);
                conn.agregarParametro("@APELLIDO", Profesional.Apellido);
                conn.agregarParametro("@DNI", Profesional.Dni);
                conn.agregarParametro("@CALLE", Profesional.Dir.Calle);
                conn.agregarParametro("@ID_LOCALIDAD", Profesional.Dir.Localidad);
                conn.agregarParametro("@MAIL", Profesional.Mail);
                conn.agregarParametro("@FECHA_NACIMIENTO", Profesional.FechaNac);
                if (Profesional.Dir.Piso != null)
                    conn.agregarParametro("@PISO", Profesional.Dir.Piso);
                if (Profesional.Dir.Departamento != null)
                    conn.agregarParametro("@DEPARTAMENTO", Profesional.Dir.Departamento);
                if (Profesional.Dir.CodigoPostal != null)
                    conn.agregarParametro("@CP", Profesional.Dir.CodigoPostal);
                conn.agregarParametro("@ATIENDE_DOMICILIO", Profesional.AtiendeADomicilio ? "1" : "0");

                query = "EXEC SP_MODIFICAR_PROFESIONAL @ID @NOMBRE @APELLIDO @DNI @CALLE @ID_LOCALIDAD @MAIL @FECHA_NACIMIENTO ";
                if (Profesional.Dir.Piso != null) query += "@PISO ";
                if (Profesional.Dir.Departamento != null) query += "@DEPARTAMENTO ";
                if (Profesional.Dir.CodigoPostal != null) query += "@CP ";
                query += " @ATIENDE_DOMICILIO ";

                ret = conn.accion(query);
                conn.close();

                return ret;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.close();
            }
        }

        public List<Profesional> listarProfesionales()
        {
            List<Profesional> profesionals = new List<Profesional>();
            String query = "SELECT ID, NOMBRE, APELLIDO, DNI, CALLE, PISO, DEPARTAMENTO, CP, MAIL, FECHA_NACIMIENTO, FECHA_INGRESO, ATIENDE_DOMICILIO, LOCALIDAD , (SELECT TOP(1) NUMERO FROM PROFESIONALES_TELEFONOS WHERE ID_PROFESIONALES = CV_SELECT_PROFESIONALES.ID ) AS TELEFONO FROM CV_SELECT_PROFESIONALES";
            SqlDataReader lector;

            try
            {
                lector = conn.lector(query);
                while (lector.Read())
                {
                    Profesional pro = new Profesional();
                    pro.Dir = new Direccion();

                    pro.IdProfesional = lector.GetInt32(0);
                    pro.Nombre = lector.GetString(1);
                    pro.Apellido = lector.GetString(2);
                    pro.Dni = Convert.ToString(lector.GetInt32(3));
                    pro.Dir.Calle = lector.GetString(4);
                    if (!lector.IsDBNull(lector.GetOrdinal("PISO")))
                        pro.Dir.Piso = Convert.ToString( lector.GetInt32(5) );
                    if (!lector.IsDBNull(lector.GetOrdinal("DEPARTAMENTO")))
                        pro.Dir.Departamento = lector.GetString( 6 );
                    if (!lector.IsDBNull(lector.GetOrdinal("CP")))
                        pro.Dir.CodigoPostal = Convert.ToString( lector.GetInt32(7) );
                    pro.Mail = lector.GetString(8);
                    pro.FechaNac = lector.GetDateTime(9);
                    pro.FechaIngreso = lector.GetDateTime(10);
                    pro.AtiendeADomicilio = lector.GetBoolean(11);
                    pro.TelefonoPrincipal = Convert.ToString(lector.GetInt32(13));

                    profesionals.Add(pro);
                }
                return profesionals;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.close();
            }
        }

        public List<Profesional> buscarProfesionales()
        {
            List<Profesional> profesionals = new List<Profesional>();
            SqlDataReader lector;
           
            
            try
            {
                

             String query = "SELECT ID, NOMBRE, APELLIDO, DNI, CALLE, PISO, DEPARTAMENTO, CP, MAIL, FECHA_NACIMIENTO, FECHA_INGRESO, ATIENDE_DOMICILIO, LOCALIDAD,(SELECT TOP(1) NUMERO FROM PROFESIONALES_TELEFONOS WHERE ID_PROFESIONALES = CV_SELECT_PROFESIONALES.ID )AS TELEFONO  FROM CV_SELECT_PROFESIONALES WHERE  NOMBRE LIKE '%" + Profesional.Nombre+"%' and  APELLIDO like '%"+Profesional.Apellido+"%' and localidad like '%"+Profesional.Dir.Localidad+"%' and provincia like '%"+Profesional.Dir.Provincia+"%' ";
                if (Profesional.Dni != null || Profesional.Dni.CompareTo("") == 0)
                {
                    query += " and DNI = " + Profesional.Dni;
                }

                lector = conn.lector(query);
                while (lector.Read())
                {
                    Profesional pro = new Profesional();
                    pro.Dir = new Direccion();
                    pro.Telefonos = new List<Telefono>();
                    Telefono tel = new Telefono();

                    pro.IdProfesional = lector.GetInt32(0);
                    pro.Nombre = lector.GetString(1);
                    pro.Apellido = lector.GetString(2);
                    pro.Dni = Convert.ToString(lector.GetInt32(3));
                    pro.Dir.Calle = lector.GetString(4);
                    if (!lector.IsDBNull(lector.GetOrdinal("PISO")))
                        pro.Dir.Piso = Convert.ToString(lector.GetInt32(5));
                    if (!lector.IsDBNull(lector.GetOrdinal("DEPARTAMENTO")))
                        pro.Dir.Departamento = lector.GetString(6);
                    if (!lector.IsDBNull(lector.GetOrdinal("CP")))
                        pro.Dir.CodigoPostal = Convert.ToString(lector.GetInt32(7));
                    pro.Mail = lector.GetString(8);
                    pro.FechaNac = lector.GetDateTime(9);
                    pro.FechaIngreso = lector.GetDateTime(10);
                    pro.AtiendeADomicilio = lector.GetBoolean(11);
                    pro.TelefonoPrincipal = Convert.ToString( lector.GetInt32( 13 ) );
                    

                    profesionals.Add( pro );
                }
                return profesionals;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                conn.close();
            }
        }

    }
}
