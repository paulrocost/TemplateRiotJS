using System.Data;

namespace AeC.ConsultorAutonomo.Data.Dapper
{
    public interface IConnectionFactory
    {
            IDbConnection GetConnection { get; }
    }
}
