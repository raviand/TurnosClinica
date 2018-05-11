using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Negocio
{
    public class Conexion
    {
        public String Url { get; set; }
        public String BaseDatos { get; set; }
        public String User { get; set; }
        public String Pass { get; set; }
        public String PersistSecurityInfo { get; set; }
        public String IntegratedSecurity { get; set; }
        public SqlConnection Conn { get; set; }
        public SqlCommand Cmd { get; set; }
        public String CadenaConexion { get; set; }
        /**
         * Constructor vacio, setea la cadena para la clinia por default
         * */
        public Conexion()
        {
            Url = ".";
            BaseDatos = "CLINICA";
            PersistSecurityInfo = "false";
            IntegratedSecurity = "SSPI";
            CadenaConexion = "data source = "+Url+"; initial catalog="+BaseDatos+";Persist Security Info="+PersistSecurityInfo+";Integrated Security="+IntegratedSecurity+";";
        }
        /**
         * Constructor con Usuario contraseña y datso ade conexion opcionales
         * **/
        public Conexion( String User, String Pass, String Url="localHost", bool IntegratedSecurity= true, String BaseDatos = "CLINICA", bool PersistSecurityInfo=false)
        {
            this.Url = Url;
            this.User = User;
            this.Pass = Pass;
            this.BaseDatos = BaseDatos;
            if (IntegratedSecurity)
                this.IntegratedSecurity = "true";
            else
                this.IntegratedSecurity = "false";
            if (PersistSecurityInfo)
                this.PersistSecurityInfo = "true";
            else
                this.PersistSecurityInfo = "false";

            CadenaConexion = "data source = " + this.Url + "; initial catalog=" + this.BaseDatos + ";Persist Security Info=" + this.PersistSecurityInfo + ";Integrated Security=" + this.IntegratedSecurity + ";";
        }


        public SqlConnection getConexion()
        {
            try
            {
                if (Conn == null)
                {
                    Conn = new SqlConnection();
                                    //Conn.ConnectionString = "data source = .; initial catalog=CLINICA;Persist Security Info=False;Integrated Security=true; ";
                    Conn.ConnectionString = CadenaConexion;
                }
                
                return Conn;
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public SqlCommand getComando()
        {
            
            try
            {
                if(Cmd == null)
                {
                    if(Conn == null)
                    {
                        Conn = new SqlConnection();
                        //Conn.ConnectionString = "data source = .; initial catalog=CLINICA;Persist Security Info=False;Integrated Security=true;";
                        Conn.ConnectionString = CadenaConexion;
                    }
                    Cmd = new SqlCommand();
                    Cmd.CommandType = System.Data.CommandType.Text;
                    Cmd.Connection = Conn;
                }
                
                return Cmd;
            }catch(SqlException e)
            {
                throw e;
            }
        }


        public void close(SqlConnection conn)
        {
            try
            {
                if(conn != null)
                {
                    conn.Close();
                }
            }catch(Exception e)
            {
                throw e;
            }
        }

        public void close()
        {
            try
            {
                if (Conn != null)
                {
                    Conn.Close();
                }
            }catch(Exception e){
                throw e;
            }
        }

        
        public SqlDataReader lector(String query)
        {
            try
            {
                if(Cmd == null)
                {
                    Cmd = getComando();
                    Cmd.CommandText = query;
                    Conn.Open();
                }
                else
                {
                    
                    //Cmd = getComando();
                    Cmd.CommandText = query;
                  
                    Conn.Open();
                }
                
                return Cmd.ExecuteReader();
            }catch(Exception e)
            {
                throw e;
            }
        }
        public SqlConnection open()
        {
            try
            {
             if(Conn != null)
                {
                    Conn.Open();
                }
                return Conn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int accion(String query)
        {
            try
            {
                if (Cmd == null)
                {
                    Cmd = getComando();
                    Conn.Open();
                }
                else
                {

                    Cmd = getComando();

                    Conn.Open();
                }
                Cmd.CommandText = query;
                
                return Cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
