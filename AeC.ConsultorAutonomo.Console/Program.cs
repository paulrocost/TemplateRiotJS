using Aec.ConsultorAutonomo.Domain;
using AeC.ConsultorAutonomo.Data.Dapper.UoW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AeC.ConsultorAutonomo.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            DapperUnitOfWork uow = new DapperUnitOfWork("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Riot;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            uow.UsuarioRepository.Add(new Usuario
            {
                Nome = "Paulo",
                Departamento = null,
                Secao = null,
                Nascimento = new DateTime(1984, 08, 28),
                CriadoEm = DateTime.Now                
            });
        }
    }
}
