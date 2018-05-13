using Datos;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;


namespace Negocio
{
    public class Verificacion
    {
        Paciente paciente;
        Telefono telefono;
        List<String> telefonos;
        PacienteNegocio pn;

        public Verificacion()
        {
             paciente = new Paciente();
             telefono = new Telefono();
             telefonos = new List<String>();
            
        }

        bool invalid = false;

        public bool IsValidEmail(string strIn)
        {
            invalid = false;
            if (String.IsNullOrEmpty(strIn))
                return false;

            // Use IdnMapping class to convert Unicode domain names.
            try
            {
                strIn = Regex.Replace(strIn, @"(@)(.+)$", this.DomainMapper,
                                      RegexOptions.None, TimeSpan.FromMilliseconds(200));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }

            if (invalid)
                return false;

            // Return true if strIn is in valid email format.
            try
            {
                return Regex.IsMatch(strIn,
                      @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                      @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                      RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }

        private string DomainMapper(Match match)
        {
            // IdnMapping class with default property values.
            IdnMapping idn = new IdnMapping();

            string domainName = match.Groups[2].Value;
            try
            {
                domainName = idn.GetAscii(domainName);
            }
            catch (ArgumentException)
            {
                invalid = true;
            }
            return match.Groups[1].Value + domainName;
        }

        public bool existeTelefono(String numero, Paciente p)
        {
            pn = new PacienteNegocio();
            bool existe = false;

            try
            {
                if (telefonos == null)
                {
                    telefonos = pn.traerTelefonos();
                }
                foreach (String num in telefonos)
                {
                    if (numero.CompareTo(num) == 0)
                    {
                        existe = true;
                        return existe;
                    }
                }
                for (int i = 0; i < p.Telefonos.Count; i++)
                {
                    if (numero.CompareTo(p.Telefonos[i].Numero) == 0)
                    {
                        existe = true;
                        return existe;
                    }
                }

                return existe;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

       
    }
}
