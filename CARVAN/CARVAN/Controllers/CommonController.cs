using CARVAN.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CARVAN.Controllers
{
    public class CommonController : Controller
    {
        private Carvan_Project_Model db = new Carvan_Project_Model();
        // GET: Common
        public ActionResult Index()
        {
            return View();
        }

        public PartialViewResult GetMenuView()
        {

            ViewBag.RangeOfCars = db.Products.Select(p => p.Range_Of_Car).Distinct();
            ViewBag.BranchNames = GetBranchNames();
            return PartialView("_MenuView");
        }

        private Dictionary<string, List<string>> GetBranchNames()
        {
            var names = db.Products.Select(p => new { BranchCar = p.Brand_Car, NameCar = p.Name_Car });
            Dictionary<string, List<string>> dicNames = new Dictionary<string, List<string>>();
            foreach (var n in names)
            {
                if (dicNames.ContainsKey(n.BranchCar))
                {
                    dicNames[n.BranchCar].Add(n.NameCar);
                }
                else
                {
                    dicNames[n.BranchCar] = new List<string> { n.NameCar };
                }
            }
            return dicNames;

        }


    }
}