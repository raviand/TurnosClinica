using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class GeneralNegocio
    {
        public ServicioMedico Servicio { get; set; }
        public GeneralNegocio()
        {
            Servicio = new ServicioMedico();
            conn = new Conexion();
        }
        private Conexion conn;
        private SqlDataReader lector;
        public Dictionary<int, String> getTiposTelefonos()
        {
            var tiposTelefonos = new Dictionary<int, String>();
            try
            {
               
                lector = conn.lector("SELECT ID, NOMBRE FROM TIPO_TEL");
                while (lector.Read())
                    tiposTelefonos.Add(lector.GetInt32(0), lector.GetString(1));
                return tiposTelefonos;
            }catch(Exception ex)
            {
                throw ex;
            }
        }

        public Dictionary<int, String> getProvincia()
        {
            var provincia = new Dictionary<int, String>();
            try
            {
             
                
                lector = conn.lector("SELECT ID, provincia FROM PROVINCIAS");
                while (lector.Read())
                {
                    provincia.Add(lector.GetInt32(0), lector.GetString(1));
                }
                return provincia;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Dictionary<int, String> getCoberturaMedica()
        {
            var coberturaMedica = new Dictionary<int, String>();
            try
            {
              
                lector = conn.lector("SELECT ID, NOMBRE FROM COBERTURAS_MEDICAS");
                while (lector.Read())
                {
                    Servicio.idServicio = lector.GetInt32(0);
                    Servicio.Nombre = lector.GetString(1);
                    coberturaMedica.Add(lector.GetInt32(0), lector.GetString(1));

                }
                return coberturaMedica;
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

        public int eliminarTelefonoPaciente(Telefono telefono)
        {
            String query = "SP_BORRAR_TEL_PACIENTE " + telefono.Numero;
            try
            {
               return conn.accion(query);
            }catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.close();
            }

        }

        public int eliminarTelefonoProfesional(Telefono telefono)
        {
            String query = "SP_BORRAR_TEL_PROFESIONAL " + telefono.Numero;
            try
            {
                return conn.accion(query);
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

        public Dictionary<int, String> getPlanMedico(int idCobertura)
        {
            var planMedico = new Dictionary<int, String>();
            try
            {
                
                //lector = 
                lector =  conn.lector("SELECT ID, NOMBRE FROM planes WHERE ID_COBERTURA=" + idCobertura);
                while (lector.Read())
                {
                    Servicio.idPlan = lector.GetInt32(0);
                    Servicio.Plan = lector.GetString(1);
                    planMedico.Add(lector.GetInt32(0), lector.GetString(1));

                }
                return planMedico;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Dictionary<int, String> getLocalidad(int idProvincia)
        {
            var localidad = new Dictionary<int, String>();
            try
            {
              
                lector = conn.lector("select ID, localidad from localidades where id_privincia =" + idProvincia);
                while (lector.Read())
                    localidad.Add(lector.GetInt32(0), lector.GetString(1));
                return localidad;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool cerrarConexion()
        {
            bool cerro = false;
            try
            {
                conn.close();
                cerro = true;
                return cerro;
            }
            catch(Exception ex)
            {
                cerro = false;
                throw ex;
            }
            
            
        }

        public void agregarServicioMedico(String servicio)
        {
            String query = $"Insert into COBERTURAS_MEDICAS (NOMBRE) VALUES ( '{servicio}' )";
            try
            {
                conn.accion(query);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void agregarPlan(String Plan, int idServicio)
        {
            String query = $"INSERT INTO PLANES (NOMBRE, ID_COBERTURA) VALUES ( '{Plan}', {idServicio} )";
            try
            {
                conn.accion(query);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void eliminarPlan(int id)
        {
            String query = $"DELETE PLANES WHERE ID = {id}";
            try
            {
                conn.accion(query);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void eliminarServicio(int id)
        {
            String query = $"Delete COBERTURAS_MEDICAS WHERE ID = {id}";
            try
            {
                conn.accion(query);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }
}
