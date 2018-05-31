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
        /**
         * Carga de Store procedure para la carga de turno
         * 
         * CREATE PROCEDURE CARGA_TURNO(
            @ID_PACIENTE INT,
            @ID_PROFESIONAL INT,
            @ID_ESPECIALIDAD INT,
            @FECHA_TURNO DATE,
            @HORA_TURNO TIME(0),
            @ID_ESTADO INT = 1
            )
            AS
            SET DATEFORMAT DMY
		        INSERT INTO TURNOS(ID_PACIENTE, ID_PROFESIONAL, ID_ESPECIALIDAD, FECHA_SOLICITUD, FECHA_TURNO, HORA_TURNO, ID_ESTADO)
		        VALUES (@ID_PACIENTE, @ID_PROFESIONAL, @ID_ESPECIALIDAD, GETDATE(), @FECHA_TURNO, @HORA_TURNO, @ID_ESTADO)
         * */
        public Turno turno { get; set; }
        private Conexion conn;
        public TurnoNegocio()
        {
            conn = new Conexion();
            turno = new Turno();

        }
        public List<Turno> listarTurnos()
        {
            /**
             * SELECT P.ID AS ID_PACI, P.NOMBRE AS NOMBRE_PACIENTE, P.APELLIDO AS APELLIDO_PACIENTE, T.FECHA_TURNO, T.HORA_TURNO, 
	E.ID AS ID_ESP, E.NOMBRE AS ESPECIALIDAD, ES.ID AS ID_ESTADO,  ES.NOMBRE AS ESTADO,
	 PRO.ID AS ID_PRO, PRO.NOMBRE AS NOMBRE_PROFESIONAL, PRO.APELLIDO AS APELLIDO_PROFESIONAL FROM TURNOS AS T
             * */
            List<Turno> turnos = new List<Turno>();
            String query = "SELECT ID_PACI, NOMBRE_PACIENTE, APELLIDO_PACIENTE, FECHA_TURNO, HORA_TURNO, ID_ESP,  ESPECIALIDAD, ID_ESTADO, ESTADO, ID_PRO, NOMBRE_PROFESIONAL, APELLIDO_PROFESIONAL FROM VW_SELECT_TURNOS ORDER BY FECHA_TURNO, HORA_TURNO";
            SqlDataReader lector;
            Turno tur; 
            try
            {
                lector = conn.lector(query);

                while (lector.Read())
                {
                    tur = new Turno();
                    tur.Paciente = new KeyValuePair<int, string>(lector.GetInt32(0), lector.GetString(2));
                    tur.Profesional = new KeyValuePair<int, string>(lector.GetInt32(9), lector.GetString(11));
                    tur.Estado = new KeyValuePair<int, string>(lector.GetInt32(7), lector.GetString(8));
                    tur.Cancela = new Cancela();
                    tur.Especialidad = new KeyValuePair<int, string>(lector.GetInt32(5), lector.GetString(6));
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


    }
}
