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
        Task AddAsync(T entity);
        void Update(T entity);
        Task UpdateAsync(T entity);
        void Remove(T entity);
        Task RemoveAsync(T entity);
        T RetrieveById(Guid Id);
        Task<T> RetrieveByIdAsync(Guid Id);
        IEnumerable<T> Retrieve(Expression<Func<T, bool>> predicate);
        Task<IEnumerable<T>> RetrieveAsync(Expression<Func<T, bool>> predicate);
        IEnumerable<T> RetrieveAll();
        Task<IEnumerable<T>> RetrieveAllAsync();
    }
}
