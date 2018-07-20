using AeC.ConsultorAutonomo.Data.Repository;
using AeC.ConsultorAutonomo.Data.Repository.Interfaces;
using System;
using System.Data;
using System.Data.SqlClient;

namespace AeC.ConsultorAutonomo.Data.Dapper.UoW
{
    public class DapperUnitOfWork : IDapperUnitOfWork
    {
        private IDbConnection _connection;
        private IDbTransaction _transaction;

        public DapperUnitOfWork(string connectionString)
        {
            _connection = new SqlConnection(connectionString);
            _connection.Open();
            _transaction = _connection.BeginTransaction();
        }

        public IDbConnection Connection
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        private IUsuarioRepository _usuarioRepository;
        public IUsuarioRepository UsuarioRepository
        {
            get
            {
                return _usuarioRepository ?? (_usuarioRepository = new UsuarioRepository(_transaction));
            }
        }


        public void Commit()
        {
            try
            {
                _transaction.Commit();
            }
            catch
            {
                _transaction.Rollback();
                throw;
            }
            finally
            {
                _transaction.Dispose();
                _transaction = _connection.BeginTransaction();
                ResetRepositories();
            }
        }

        public void Dispose()
        {
            if (_transaction != null)
            {
                _transaction.Dispose();
                _transaction = null;
            }

            if (_connection != null)
            {
                _connection.Dispose();
                _connection = null;
            }
        }

        private void ResetRepositories()
        {
            _usuarioRepository = null;
        }
    }
}
