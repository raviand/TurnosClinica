using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Datos;
namespace Negocio
{
    public class PacienteNegocio
    {
        private Conexion conn;
        private SqlDataReader lector;
        private List<String> telefonos;
        private Verificacion ver;
        private Paciente paciente;

        public PacienteNegocio()
        {
            conn = new Conexion();
            paciente = new Paciente();
            paciente.Dir = new Direccion();
            paciente.Telefonos = new List<Telefono>();
            paciente.CobreturaMedica = new ServicioMedico();
        }

        public void setPaciente(Paciente paciente)
        {
            this.paciente = paciente;
        }
        public Paciente GetPaciente()
        {
            return paciente;
        }

        public Paciente traerPaciente(int id)
        {
            Paciente paciente = new Paciente();
            paciente.Dir = new Direccion();
            paciente.CobreturaMedica = new ServicioMedico();
            try
            {
                lector = conn.lector("SELECT PACIENTES.NOMBRE, PACIENTES.APELLIDO, PACIENTES.DNI, PACIENTES.CALLE, PACIENTES.PISO, PACIENTES.DEPARTAMENTO, PACIENTES.CP, LOCALIDAD.NOMBRE, PROVINCIA.NOMBRE, COBERTURA_PACIENTE.NUMERO, PLANES.NOMBRE FROM PACIENTES LEFT JOIN LOCALIDAD ON LOCALIDAD.ID = PACIENTES.ID_LOCALIDAD LEFT JOIN PROVINCIA ON LOCALIDAD.ID_PROVINCIA = PROVINCIA.ID LEFT JOIN COBERTURA_PACIENTES ON COBERTURA_PACIENTES.ID = PACIENTES.ID LEFT JOIN PLANES ON PLANES.ID = COBERTURA_PACIENTES.ID_PLAN WHERE PACIENTES.ID=" + id);

                    paciente.Nombre = lector.GetString(0);
                    paciente.Apellido = lector.GetString(1);
                    paciente.Dni =  Convert.ToString(lector.GetInt32(2));
                    paciente.Dir.Calle = lector.GetString(3);
                    if (!lector.IsDBNull(lector.GetOrdinal("PISO")))
                        paciente.Dir.Piso = Convert.ToString(lector.GetInt32(4));
                    if (!lector.IsDBNull(lector.GetOrdinal("DEPARTAMENTO")))
                        paciente.Dir.Departamento = lector.GetString(5);
                    if (!lector.IsDBNull(lector.GetOrdinal("CP")))
                        paciente.Dir.CodigoPostal = Convert.ToString(lector.GetInt32(6));
                    if (!lector.IsDBNull(lector.GetOrdinal("NOMBRE")))
                        paciente.Dir.Localidad = lector.GetString(7);
                    if (!lector.IsDBNull(lector.GetOrdinal("NOMBRE")))
                        paciente.Dir.Provincia = lector.GetString(8);
                    if (!lector.IsDBNull(lector.GetOrdinal("NUMERO")))
                        paciente.CobreturaMedica.NumeroCredencial = Convert.ToString(lector.GetInt32(9));
                    if (!lector.IsDBNull(lector.GetOrdinal("PLANES.NOMBRE")))
                        //paciente.CobreturaMedica.Plan = lector.GetString(10);

                conn.close();
                return paciente;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public List<Paciente> listar()
        {
            

            Paciente paciente = new Paciente();
            paciente.IdPaciente = "-1";
            IList<Paciente> pacientes = new List<Paciente>();
           
            try
            {
                lector = conn.lector("SELECT PACIENTES.ID,"+
                                    "PACIENTES.NOMBRE,"+
                                    "PACIENTES.APELLIDO,"+
                                    "PACIENTES.DNI,"+
                                    "PACIENTES.CALLE,"+
                                    "PACIENTES.PISO,"+
                                    "PACIENTES.DEPARTAMENTO,"+
                                    "PACIENTES.CP,"+
                                    "PACIENTES.MAIL,"+
                                    "PACIENTES.FECHA_NACIMIENTO,"+
                                    "PACIENTES.FECHA_INGRESO,"+
                                    "localidades.id,"+
                                    "provincias.id, "+
                                    "COBERTURA_PACIENTES.NUMERO_CREDENCIAL,"+
                                    "COBERTURA_PACIENTES.ID_PLAN,"+
                                    "PLANES.ID_COBERTURA "+
                                    "FROM PACIENTES " +
                                    "LEFT JOIN localidades ON localidades.id = PACIENTES.ID_LOCALIDAD "+
                                    "LEFT JOIN provincias ON localidades.id_privincia = provincias.id  "+
                                    "LEFT JOIN COBERTURA_PACIENTES ON COBERTURA_PACIENTES.ID_PACIENTE = PACIENTES.ID "+
                                    "LEFT JOIN PLANES ON PLANES.ID = COBERTURA_PACIENTES.ID_PLAN" ); 

                while (lector.Read())
                {
                    paciente = new Paciente();
                    paciente.Dir = new Direccion();
                    paciente.CobreturaMedica = new ServicioMedico();
                    paciente.Telefonos = new List<Telefono>();
                    paciente.IdPaciente = Convert.ToString(lector.GetInt32(0));
                    paciente.Nombre = lector.GetString(1);
                    paciente.Apellido = lector.GetString(2);
                    paciente.Dni = Convert.ToString(lector.GetInt32(3));
                    paciente.Dir.Calle = lector.GetString(4);
                    if (!lector.IsDBNull(lector.GetOrdinal("PISO")))
                        paciente.Dir.Piso = Convert.ToString(lector.GetInt32(5));
                    if (!lector.IsDBNull(lector.GetOrdinal("DEPARTAMENTO")))
                        paciente.Dir.Departamento = lector.GetString(6);
                    if (!lector.IsDBNull(lector.GetOrdinal("CP")))
                        paciente.Dir.CodigoPostal = Convert.ToString(lector.GetInt32(7));
                    paciente.Mail = lector.GetString(8);
                    if (!lector.IsDBNull(lector.GetOrdinal("FECHA_NACIMIENTO")))
                        paciente.FechaNac = lector.GetDateTime(9);
                    if (!lector.IsDBNull(lector.GetOrdinal("FECHA_INGRESO")))
                        paciente.FechaIngreso = lector.GetDateTime(10);
                    paciente.Dir.Localidad = Convert.ToString( lector.GetInt32(11) );
                    paciente.Dir.Provincia = Convert.ToString( lector.GetInt32(12) );
                    if (!lector.IsDBNull(lector.GetOrdinal("NUMERO_CREDENCIAL")))
                        paciente.CobreturaMedica.NumeroCredencial = Convert.ToString( lector.GetInt32(13) );
                    if (!lector.IsDBNull(lector.GetOrdinal("ID_PLAN")))
                        paciente.CobreturaMedica.Plan = Convert.ToString(lector.GetInt32(14));
                    if (!lector.IsDBNull(lector.GetOrdinal("ID_COBERTURA")))
                        paciente.CobreturaMedica.Nombre = Convert.ToString( lector.GetInt32(15) );

                    pacientes.Add(paciente);

                }
                conn.close();

                
                return (List<Paciente>)pacientes;
            }catch(Exception e)
            {
                throw e;
            }
        }

        public List<Telefono> listarTelefonos()
        {
            List<Telefono> telefonos = new List<Telefono>();

            try
            {
                lector = conn.lector("SELECT TELEFONO.NUMERO, TIPO_TEL.NOMBRE FROM TELEFONO  INNER JOIN PACIENTE_TELEFONOS ON PACIENTE_TELEFONOS.NUMERO = TELEFONO.NUMERO INNER JOIN TIPO_TEL ON TIPO_TEL.ID = TELEFONO.TIPO WHERE PACIENTE_TELEFONOS.ID_PACIENTE = " + paciente.IdPaciente);

                while (lector.Read())
                {
                    Telefono tel = new Telefono();
                    tel.Numero = Convert.ToString(lector.GetInt32(0));
                    tel.Tipo = lector.GetString(1);
                    telefonos.Add(tel);
                }

                conn.close();

                return telefonos;
            }
            catch (Exception e)
            {
                throw e;
            }


        }

        public List<Telefono> listarTelefonos(int id)
        {
            List<Telefono> telefonos = new List<Telefono>();
            try
            {
                String query = "SELECT TELEFONO.NUMERO, TIPO_TEL.nombre " +
                    "FROM TELEFONO  " +
                    "INNER JOIN PACIENTE_TELEFONOS ON PACIENTE_TELEFONOS.NUMERO = TELEFONO.NUMERO " +
                    "INNER JOIN TIPO_TEL ON TIPO_TEL.ID = TELEFONO.TIPO " +
                    "WHERE PACIENTE_TELEFONOS.ID_PACIENTE = " + id;

                lector = conn.lector(query);
                while (lector.Read())
                {
                    Telefono tel = new Telefono();
                    tel.Numero = Convert.ToString(lector.GetInt32(0));
                    tel.Tipo = lector.GetString(1);
                    telefonos.Add(tel);
                }
                conn.close();
                return telefonos;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /**
         * 
         * eliminar(id) Elimina el paciente seleccionado
         * permitir esta accion solo al usuario de ingresos
         * 
         * */
        public int eliminar(int id)
        {
            int res;
           
            try
            {
                res = conn.accion("DELETE PACIENTES WHERE ID=" + id.ToString());
                return res;
            }catch(Exception ex)
            {
                throw ex;
            }
            
        }

        

        public List<String> traerTelefonos()
        {
            List<String> phones = new List<string>();
            try
            {
                conn = new Conexion();
                lector = conn.lector("SELECT NUMERO FROM TELEFONO");

                while (lector.Read())
                {
                    
                    phones.Add(Convert.ToString(lector.GetInt32(0)));
                }

                conn.close();
                return phones;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int cargarPaciente(Paciente ePaciente)
        {
            Paciente paciente = new Paciente();
            paciente.Dir = new Direccion();
            paciente.CobreturaMedica = new ServicioMedico();
            paciente.Telefonos = new List<Telefono>();
            paciente = ePaciente;
            int lastId = 0;
            SqlDataReader lector;
            int res;
            String query;
            bool pisoExist = false;
            bool deptoExist = false;
            bool cpExist = false;
            try
            {
                query = "BEGIN TRANSACTION ";

                query += "DECLARE @DataID int; ";
                query += "set dateformat dmy INSERT INTO PACIENTES(ID_LOCALIDAD, NOMBRE, APELLIDO, DNI, MAIL, FECHA_NACIMIENTO, FECHA_INGRESO, CALLE";
                if (paciente.Dir.Departamento != null)
                {
                    deptoExist = true;
                    query += ", DEPARTAMENTO";
                }
                if (Int32.Parse(paciente.Dir.Piso) != 0)
                {
                    pisoExist = true;
                    query += ", PISO";
                }
                if (Int32.Parse(paciente.Dir.CodigoPostal) != 0)
                {
                    cpExist = true;
                    query += ", CP";
                }
                query += ") VALUES ( " + paciente.Dir.Localidad +" ,'" + paciente.Nombre +
                    "', '" + paciente.Apellido + 
                    "', " + paciente.Dni +
                    ", '" + paciente.Mail + 
                    "', '" + paciente.FechaNac.ToShortDateString() + 
                    "', '" + DateTime.Today.ToShortDateString() +
                    "', '" + paciente.Dir.Calle + 
                    "' ";
                   
                if (deptoExist) query += ", '"+paciente.Dir.Departamento + "' ";
                if (pisoExist)  query += ", " + paciente.Dir.Piso + " ";
                if (cpExist)    query += ", " + paciente.Dir.CodigoPostal + " ";
                

                query += "); ";
                query += " SET @DataID = scope_identity(); ";

                query += cargaTelefonos(paciente.Telefonos);
                query += cargaCoberturaMedica(paciente.CobreturaMedica);

                query += "COMMIT";
                res = conn.accion(query);

                
                return res;
                
            }catch(Exception ex)
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
            try
            {
                String query = "INSERT INTO TELEFONO (NUMERO, TIPO) VALUES ";
                foreach (Telefono telefono in telefonos)
                {
                    query += "(" + telefono.Numero + ", " + telefono.Tipo + ") ,";
                }
                query = query.Remove(query.Length - 2, 2);
                query += "; ";
            
                query += "INSERT INTO PACIENTE_TELEFONOS (ID_PACIENTE, NUMERO) VALUES ";
                foreach (Telefono telefono in telefonos)
                {
                    query += "( @DataID, " + telefono.Numero + ") ,";
                }
                query = query.Remove(query.Length - 2, 2);
                query += "; ";

                return query;
            }
            catch(SqlException ex)
            {
                throw ex;
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

        public String cargaCoberturaMedica(ServicioMedico servicioMedico)
        {
            bool existNumeroCredencial = false;
            try
            {
                String query = " INSERT INTO COBERTURA_PACIENTES (ID_PACIENTE, ID_PLAN";//) VALUES ";
                if(servicioMedico.NumeroCredencial.CompareTo("") != 0)
                {
                    existNumeroCredencial = true;
                    query += ", NUMERO_CREDENCIAL ";
                }
                query += ") VALUES ( @DataID ," + servicioMedico.Plan ;
                if (existNumeroCredencial)
                {
                    query += ", " + servicioMedico.NumeroCredencial;
                }
                query += "); ";

                return query;
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

        public List<Telefono> GetTelefono()
        {
            return paciente.Telefonos;
        }


    }
}
