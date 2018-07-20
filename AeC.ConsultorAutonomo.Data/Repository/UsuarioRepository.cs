using Aec.ConsultorAutonomo.Domain;
using AeC.ConsultorAutonomo.Data.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq.Expressions;
using AeC.ConsultorAutonomo.Data.Dapper;
using System.Data;


namespace AeC.ConsultorAutonomo.Data.Repository
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private IDbTransaction _transaction;
        private IDbConnection _connection
        {
            get
            {
                return _transaction.Connection;
            }
        }

        public UsuarioRepository(IDbTransaction transaction)
        {
            _transaction = transaction;
        }

        public void Add(Usuario entity)
        {
            //return _connection.ExecuteScalar<>(
            //        @"INSERT INTO Usuario(Nome, Nascimento, CriadoEm, AlteradoEm, ExcluidoEm)
            //            VALUES(@Nome, @Nascimento, @CriadoEm, @AlteradoEm, @ExcluidoEm);
            //            SELECT SCOPE_IDENTITY()",
            //        entity,
            //        _transaction);
        }

        public Task AddAsync(Usuario entity)
        {
            throw new NotImplementedException();
            //return _connection.ExecuteScalarAsync<Task>(
            //     @"INSERT INTO Usuario(Nome, Nascimento, CriadoEm, AlteradoEm, ExcluidoEm)
            //            VALUES(@Nome, @Nascimento, @CriadoEm, @AlteradoEm, @ExcluidoEm);
            //            SELECT SCOPE_IDENTITY()",
            //         entity)
            //         .Result;

        }

        public void Remove(Usuario entity)
        {
            //_connection.Execute(
            //    @"DELETE Usuario SET Id = @Id",
            //    entity,
            //    _transaction);
        }

        public Task RemoveAsync(Usuario entity)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Usuario> Retrieve(Expression<Func<Usuario, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Usuario> RetrieveAll()
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<Usuario>> RetrieveAllAsync()
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<Usuario>> RetrieveAsync(Expression<Func<Usuario, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Usuario RetrieveById(Guid Id)
        {
            throw new NotImplementedException();
        }

        public Task<Usuario> RetrieveByIdAsync(Guid Id)
        {
            throw new NotImplementedException();
        }

        public void Update(Usuario entity)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(Usuario entity)
        {
            throw new NotImplementedException();
        }
    }
}
