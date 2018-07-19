using System.Configuration;
using System.Data;
using System.Data.Common;

namespace AeC.ConsultorAutonomo.Data.Dapper
{
    public class ConnectionFactory : IConnectionFactory
    {
        private readonly string connectionString = ConfigurationManager.AppSettings["connectionstring"];
        public IDbConnection GetConnection
        {
            get
            {
                var factory = DbProviderFactories.GetFactory("System.Date.SqlClient");
                var conn = factory.CreateConnection();
                conn.ConnectionString = connectionString;
                return conn;
            }
        }
    }
}
