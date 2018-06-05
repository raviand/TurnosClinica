using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocio;
using Datos;
using System.Data.SqlClient;

namespace Negocio
{
    public class TurnoNegocio
    {

        public Turno turno { get; set; }
        private Conexion conn;
        public int idProfesional { get; set; }
        public int mesAnterior { get; set; }
        public int mesPosterior { get; set; }


        public TurnoNegocio()
        {
            conn = new Conexion();
            turno = new Turno();
            turno.FechaSolicitud = new DateTime();
            turno.FechaTurno = new DateTime();
        }
        public List<Turno> listarTurnos()
        {

            List<Turno> turnos = new List<Turno>();
            String query = "SELECT ID_PACI, NOMBRE_PACIENTE, APELLIDO_PACIENTE, FECHA_TURNO, HORA_TURNO, ID_ESP,  ESPECIALIDAD, ID_ESTADO, ESTADO, ID_PRO, NOMBRE_PROFESIONAL, APELLIDO_PROFESIONAL FROM VW_SELECT_TURNOS "+ whereEnListar() + " ORDER BY FECHA_TURNO, HORA_TURNO";
            SqlDataReader lector;
            Turno tur; 
            try
            {
                lector = conn.lector(query);

                while (lector.Read())
                {
                    tur = new Turno();
                    tur.idPaciente = Convert.ToString(lector.GetInt32(0));
                    tur.ApellidoPaciente = lector.GetString(2);
                    tur.idProfesional = Convert.ToString(lector.GetInt32(9));
                    tur.ApellidoProfesional = lector.GetString(11);
                    tur.idEstado = Convert.ToString(lector.GetInt32(7));
                    tur.Estado = lector.GetString(8);
                    tur.idEspecialidad = Convert.ToString(lector.GetInt32(5));
                    tur.Especialidad = lector.GetString(6);
                    tur.NombrePaciente = lector.GetString(1);
                    tur.FechaTurno = lector.GetDateTime(3);
                    TimeSpan timeSpan = lector.GetTimeSpan(4);
                    tur.FechaTurno += timeSpan;
                    tur.NombreProfesional = lector.GetString(10);
                    turnos.Add(tur);
                }
                return turnos;
            }catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.close();
            }
        }

        private String whereEnListar()
        {
            String query = "WHERE ESTADO LIKE '%";
            if (turno.Estado != null) query += turno.Estado;
            query += "%' AND ESPECIALIDAD LIKE '%";
            if (turno.Especialidad != null) query += turno.Especialidad;
            query += "%' AND APELLIDO_PROFESIONAL LIKE '%";
            if (turno.ApellidoProfesional != null) query += turno.ApellidoProfesional;
            query += "%' AND NOMBRE_PROFESIONAL LIKE '%";
            if (turno.NombreProfesional != null) query += turno.NombreProfesional;
            query += "%'";
            if (turno.idPaciente != null) query += "  AND ID_PACI = " + turno.idPaciente;
            if (turno.Estado == null) query += " AND (ID_ESTADO = 1 OR ID_ESTADO = 4) ";
            query += " AND ";
            if (mesAnterior != 0 && mesPosterior == 0)
            {
                query += "FECHA_TURNO > DATEADD(MONTH, "+ (mesAnterior * -1) +", CONVERT (date, GETDATE()) )";
            }else if(mesAnterior == 0 && mesPosterior != 0)
            {
                query += "FECHA_TURNO > GETDATE() and FECHA_TURNO < DATEADD(MONTH, " + mesPosterior+", CONVERT (date, GETDATE()) ) ";
            }else if (mesAnterior != 0 && mesPosterior != 0)
            {
                query += "FECHA_TURNO > DATEADD(MONTH, " + (mesAnterior * -1)+", CONVERT (date, GETDATE()) ) and ";
                query += "FECHA_TURNO < DATEADD(MONTH, " + mesPosterior+", CONVERT (date, GETDATE()) )";
            }
            else
            {
                query += "FECHA_TURNO > GETDATE()";
            }


            return query;
        }

        public Dictionary<int, String> getProfesionales()
        {
            Dictionary<int, String> profecionales;
            profecionales = new Dictionary<int, string>();
            SqlDataReader lector;
            String query = "SELECT P.ID, P.NOMBRE, P.APELLIDO FROM PROFESIONALES AS P INNER JOIN PROFESIONALES_ESPECIALIDADES AS PE ON PE.ID_PROFESIONAL = P.ID WHERE PE.ID_ESPECIALIDAD = " + idProfesional;
            try
            {
                lector = conn.lector(query);
                while (lector.Read())
                {
                    profecionales.Add(lector.GetInt32(0), lector.GetString(2) + ", " + lector.GetString(1));
                }
                return profecionales;

            }catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.close();
            }
        }

        public List<KeyValuePair<String, String>> getAtencionProfesional( int id )
        {
            String query = "SELECT DIA, TURNO FROM VW_DIAS_ATENCION WHERE ID = " + id;
            KeyValuePair<String, String> atencionProfesional;
            SqlDataReader lector;
            List<KeyValuePair<String, String>> lista = new List<KeyValuePair<string, string>>();

            try
            {
                lector = conn.lector(query);

                while (lector.Read())
                {
                    atencionProfesional = new KeyValuePair<string, string>(lector.GetString(0), lector.GetString(1));
                    lista.Add(atencionProfesional);
                }
                return lista;
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

        public int guardarNuevoTurno(bool esSobreturno)
        {

            try
            {
              
                conn.agregarParametro("@IDPACIENTE", turno.idPaciente);
                conn.agregarParametro("@IDPROFESIONAL", turno.idProfesional);
                conn.agregarParametro("@IDESPECIALIDAD", turno.idEspecialidad);
                conn.agregarParametro("@FECHATURNO", turno.FechaTurno.Date);
                conn.agregarParametro("@HORATURNO", turno.FechaTurno.TimeOfDay);
                if(esSobreturno) conn.agregarParametro("@SOBRETURNO", 4);
                String query = "set dateformat dmy EXEC CARGA_TURNO @IDPACIENTE, @IDPROFESIONAL ,@IDESPECIALIDAD, @FECHATURNO, @HORATURNO ";
                if (esSobreturno) query += ", @SOBRETURNO";
                int res = conn.accion(query);
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

        public List<String> listarEstado()
        {
            String query = "SELECT NOMBRE FROM ESTADO";
            //KeyValuePair<String, String> atencionProfesional;
            SqlDataReader lector;
            List<String> lista = new List<String>();
            String input;
            try
            {
                lector = conn.lector(query);

                while (lector.Read())
                {
                    input = lector.GetString(0);
                    lista.Add(input);
                }
                return lista;
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
