using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AeC.ConsultorAutonomo.Data.Dapper.UoW
{
    public interface IDapperUnitOfWork : IDisposable
    {
        IDbConnection Connection { get; }
        void Commit();
    }
}
