﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Paciente : Persona
    {
        public DateTime FechaIngreso { get; set; }
        public String IdPaciente { get; set; }
        public List<Atencion> HistoriaMedica { get; set; }
        public ServicioMedico CobreturaMedica { get; set; }

        public override string ToString()
        {
            String datos = $"{IdPaciente} - {base.ToString()}";

            return datos;
        }
    }
}
