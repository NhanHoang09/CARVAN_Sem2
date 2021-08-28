using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CARVAN.Models;


namespace CARVAN.Controllers
{
    public class ProductsController : Controller
    {
        private Carvan_Project_Model db = new Carvan_Project_Model();

        // GET: Products
        public ActionResult Index()
        {
            string categoryId = Request.Params.Get("rangeofcars");
            IEnumerable<Product> products;
            if (!string.IsNullOrWhiteSpace(categoryId))
            {
                products = db.Products
                    .Where(p => p.Range_Of_Car == categoryId);
            }
            else
            {
                products = db.Products;
            }
            //ViewBag.RangeOfCars = db.Products.Select(p => p.Range_Of_Car).Distinct();
            //ViewBag.BranchNames = GetBranchNames();


            return View(products);
        }

        // GET: Products/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
        
            //ViewBag.RangeOfCars = db.Products.Select(p => p.Range_Of_Car).Distinct();
            //ViewBag.BranchNames = GetBranchNames();
            ViewBag.products = db.Products;
            return View(product);
            
        }

        //private Dictionary<string, List<string>> GetBranchNames()
        //{
        //   var names = db.Products.Select(p => new {BranchCar = p.Brand_Car, NameCar = p.Name_Car});
        //    Dictionary<string, List<string>> dicNames = new Dictionary<string, List<string>>();
        //    foreach(var n in names)
        //    {
        //        if (dicNames.ContainsKey(n.BranchCar))
        //        {
        //            dicNames[n.BranchCar].Add(n.NameCar);
        //        }
        //        else
        //        {
        //            dicNames[n.BranchCar] = new List<string> { n.NameCar};
        //        }
        //    }
        //    return dicNames;

        //}

        // GET: Products/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id_Car,Name_Car,Range_Of_Car,Brand_Car,Pricing,Seller,Status,Description,Image_1,Image_2,Image_3,Image_4,Image_5,Image_6")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(product);
        }

        // GET: Products/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        //public ActionResult Edit(Product product)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(product).State = EntityState.Modified;
        //        SaveUploadedImage(product); // TODO: upload image, cần accept field ở phần Bind
              
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(product);
        //}

        //private void SaveUploadedImage(Product product)
        //{
        //    // Bỏ qua xử lí nếu không có file được upload
        //    if (product.UpLoadFile == null) { return; }

        //    // Lấy đường dẫn để lưu
        //    string uploadDir = "/Uploads";
        //    string relativePath = Common.Utils.PrependUniqueString(product.UpLoadFile.FileName);
        //    string absolutePath = Server.MapPath(uploadDir + "/" + relativePath);

        //    //var featuredImage = new ProductImage
        //    //{
        //    //    ImageUrl = relativePath,
        //    //    IsFeatured = true
        //    //};

        //    // Cơ bản để lưu file về
        //    product.UpLoadFile.SaveAs(absolutePath);

        //    // Gắn thông tin imgage vào sản phẩm (lưu dữ liệu vào bảng ProductImage)
        //    //product.Product.Add(Image_2);
        //    product.Image_1 = relativePath;
        //}
        // GET: Products/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult Search(string search)
        {
            IEnumerable<Product> products = null ;
            if (!string.IsNullOrWhiteSpace(search))
            {
                products = db.Products
                    .Where(p => p.Name_Car == search);
            }
            else
            {
                products = db.Products;
            }
            //search tu db theo tu khoa
            return View(products);
        }
    }
}
