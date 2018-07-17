﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aec.ConsultorAutonomo.Domain
{
    public class Secao
    {
        public Guid Id { get; set; }
        public String Nome { get; set; }
        public DateTime CriadoEm { get; set; }
        public DateTime AlteradoEm { get; set; }
        public DateTime ExcluidoEm { get; set; }
        public Departamento Departamento { get; set; }
    }
}
