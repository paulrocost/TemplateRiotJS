using Aec.ConsultorAutonomo.Domain;
using AeC.ConsultorAutonomo.Data.Dapper.UoW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AeC.ConsultorAutonomo.UI.Controllers
{
    public class HomeController : Controller
    {
               
        public ActionResult Index()
        {
            DapperUnitOfWork _uow = new DapperUnitOfWork("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Riot;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            _uow.UsuarioRepository.Add(
                new Usuario
                {
                    Nome = "Paulo",
                    Departamento = null,
                    Secao = null,
                    Nascimento = new DateTime(1984, 08, 28),
                    CriadoEm = DateTime.Now
                });

            return RedirectToAction("Index","Dashboard");
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}