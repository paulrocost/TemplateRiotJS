using AeC.ConsultorAutonomo.Common;
using AeC.ConsultorAutonomo.Data.Repository.Core.Interface;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using Dapper;

namespace AeC.ConsultorAutonomo.Data.Repository.Core
{
    public class BaseRepository<T> : IBaseRepository<T> where T: class
    {
        protected string connection = Constants.connection;

        internal SqlConnection Connection
        {
            get
            {
                return new SqlConnection(connection);
            }
        }


        public void Add(T entity)
        {
            using (var sqlconnection = new SqlConnection(connection))
            {
                var Id = Guid.NewGuid();
                var sql = "Insert into @table (";
                sqlconnection.Execute(sql);
            }


            throw new NotImplementedException();
        }

        public void Update(T entity)
        {
            throw new NotImplementedException();
        }        

        public void Remove(T entity)
        {
            throw new NotImplementedException();
        }

        public T Retrieve(Guid Id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<T> RetrieveAll()
        {
            throw new NotImplementedException();
        }

        public T RetrieveById(Guid Id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<T> Retrieve(Expression<Func<T, bool>> predicate)
        {
            throw new NotImplementedException();
        }
    }
}
