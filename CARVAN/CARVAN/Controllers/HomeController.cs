using CARVAN.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CARVAN.Controllers
{
    public class HomeController : Controller
    {
        private Carvan_Project_Model db = new Carvan_Project_Model();
        // GET: Home
        public ActionResult Index()
        {
            IEnumerable<Product> products;
            products = db.Products;
        
        ViewBag.RangeOfCars = db.Products.Select(p => p.Range_Of_Car).Distinct();
            return View();
        }

        public ActionResult About()
        {
  
            return View();
        }

        public ActionResult Contact()
        {

            return View();
        }
    }
}