using Aec.ConsultorAutonomo.Domain;
using AeC.ConsultorAutonomo.Data.Repository.Core;
using AeC.ConsultorAutonomo.Data.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AeC.ConsultorAutonomo.Data.Repository
{
    public class UsuarioRepository : BaseRepository<Usuario>, IUsuarioRepository 
    {
    }
}
