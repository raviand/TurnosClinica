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

        public PacienteNegocio()
        {
            conn = new Conexion();
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
            
            IList<Paciente> pacientes = new List<Paciente>();
            try
            {
                lector = conn.lector("SELECT PACIENTES.NOMBRE, PACIENTES.APELLIDO, PACIENTES.DNI, PACIENTES.CALLE, PACIENTES.PISO, PACIENTES.DEPARTAMENTO, PACIENTES.CP, LOCALIDAD.NOMBRE, PROVINCIA.NOMBRE, COBERTURA_PACIENTES.NUMERO_CREDENCIAL, PLANES.NOMBRE, PACIENTES.MAIL FROM PACIENTES LEFT JOIN LOCALIDAD ON LOCALIDAD.ID = PACIENTES.ID_LOCALIDAD LEFT JOIN PROVINCIA ON LOCALIDAD.ID_PROVINCIA = PROVINCIA.ID LEFT JOIN COBERTURA_PACIENTES ON COBERTURA_PACIENTES.ID = PACIENTES.ID LEFT JOIN PLANES ON PLANES.ID = COBERTURA_PACIENTES.ID_PLAN");
                
                while (lector.Read())
                {
                    Paciente paciente = new Paciente();
                    paciente.Dir = new Direccion();
                    paciente.CobreturaMedica = new ServicioMedico();
                    
                    paciente.Nombre = lector.GetString(0);
                    paciente.Apellido = lector.GetString(1);
                    paciente.Dni = Convert.ToString(lector.GetInt32(2));
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
                    //if (!lector.IsDBNull(lector.GetOrdinal("NUMERO")))
                    //    paciente.CobreturaMedica.NumeroCredencial = lector.GetInt32(9);
                    //if (!lector.IsDBNull(lector.GetOrdinal("PLANES.NOMBRE")))
                    //paciente.CobreturaMedica.Plan = lector.GetString(10);
                    paciente.Mail = lector.GetString(11);
                    pacientes.Add(paciente);
                }
                
                conn.close();
                return (List<Paciente>)pacientes;
            }catch(Exception e)
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
                    query += "(" + telefono.Numero + ", " + telefono.Tipo.Substring(1, 1) + ") ,";
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


    }
}
