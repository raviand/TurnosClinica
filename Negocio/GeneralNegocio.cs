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
        private Conexion conn;
        private SqlDataReader lector;
        public Dictionary<int, String> getTiposTelefonos()
        {
            var tiposTelefonos = new Dictionary<int, String>();
            try
            {
                conn = new Conexion();
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
                conn = new Conexion();
                
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
                conn = new Conexion();
                lector = conn.lector("SELECT ID, NOMBRE FROM COBERTURAS_MEDICAS");
                while (lector.Read())
                    coberturaMedica.Add(lector.GetInt32(0), lector.GetString(1));
                return coberturaMedica;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Dictionary<int, String> getPlanMedico(int idCobertura)
        {
            var planMedico = new Dictionary<int, String>();
            try
            {
                conn = new Conexion();
                //lector = 
                lector =  conn.lector("SELECT ID, NOMBRE FROM planes WHERE ID_COBERTURA=" + idCobertura);
                while (lector.Read())
                    planMedico.Add(lector.GetInt32(0), lector.GetString(1));
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
                conn = new Conexion();
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

    }
}
