using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace AeC.ConsultorAutonomo.Data.Repository.Core.Interface
{
    public interface IBaseRepository<T> where T:class
    {
        void Add(T entity);
        void Update(T entity);
        void Remove(T entity);        
        T RetrieveById(Guid Id);
        IEnumerable<T> Retrieve(Expression<Func<T, bool>> predicate);
        IEnumerable<T> RetrieveAll();
    }
}
