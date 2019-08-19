using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using himalWebAPI.Models;
using himalWebAPI.ViewModel;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace himalWebAPI.Controllers
{
    [Route("api/[controller]")]
    public class ProductController : Controller
    {
        private readonly DataContext _context;
        private readonly IHostingEnvironment _hostingEnvironment;
        private object filePath;
        private object size;

        public ProductController(DataContext context,IHostingEnvironment hostingEnvironment)
        {
            _context = context;
            _hostingEnvironment = hostingEnvironment;
            //if (_context.ProductTable.Count() == 0)
            //{
            //    // Create a new ProductTable if collection is empty,
            //    // which means you can't delete all TodoItems.
            //    //Product p = new Product()
            //    //{
            //    //    ProductName = "Item2",
            //    //    ImageURL = "addrererg",
            //    //    ProductDescription = "hehehe",
            //    //    CREATED_BY = "Roshan Karn"
            //    //};
            //    //_context.ProductTable.Add(p);

            //    //var ProductTable = new Product() { PRODUCT_NAME = "Item2", IMAGE_URL = "address", DESCRIPTION = "hahaha", CREATED_BY = "Roshan Karn" };
            //    //_context.Add(ProductTable);

            //    _context.SaveChanges();
            //}
        }

        // GET: api/<controller>
        [HttpGet]
        public IEnumerable<ProductViewModel> Get()
        {
            var productViewModels = _context.ProductTable.Select(t => new ProductViewModel() {
                ProductDescription=t.ProductDescription,
                ImageURL= t.ImageURL,
                ProductID=t.ProductID,
                ProductName=t.ProductName
            });
            return productViewModels.ToList();
        }

    
        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ProductViewModel get(int id)
        {
            var productViewModel = _context.ProductTable.Where(x => x.ProductID == id).Select(t => new ProductViewModel() {
                ProductID = t.ProductID,
                ImageURL = t.ImageURL,
                ProductDescription=t.ProductDescription,
                ProductName=t.ProductName
            }).FirstOrDefault();
            return productViewModel;           
        }

       

        [HttpPost]
        public void PostAsync(IFormCollection form)
        {
            try
            {
                //long size = files.Sum(f => f.Length);
                var model = JsonConvert.DeserializeObject<Product>(form["model"]);
                var files = form.Files;
                string directoryPath = _hostingEnvironment.WebRootPath + "\\files\\Agarbatti\\";
                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }
                  
                foreach (var formFile in files)
                {
                    if (formFile.Length > 0)
                    {
                        var filepath = directoryPath + formFile.FileName;
                        
                        using (var stream = new FileStream(filepath, FileMode.Create))
                        {
                            formFile.CopyTo(stream);
                        }
                        model.ImageURL = "\\files\\Agarbatti\\" + formFile.FileName;
                    }
                }
                _context.ProductTable.Add(model);
                    if (_context.SaveChanges() > 0)
                    {
                        

                    }
                              
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        // POST api/<controller>
        //[HttpPost]
        //public void Post([FromBody]Product ProductTable)
        //{
        //    try
        //    {
        //        if (ProductTable != null)
        //        {
        //            _context.ProductTable.Add(ProductTable);
        //            if (_context.SaveChanges() > 0)
        //            {
        //                _context.ProductTable.Add(ProductTable);
        //                _context.SaveChanges();
        //            }
        //        }
        //    }
        //    catch(Exception ex)
        //    {

        //    }            
        //}

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]Product product)
        {
            var productModel = _context.ProductTable.FirstOrDefault(x => x.ProductID == id);
            productModel.ProductDescription = product.ProductDescription;
            productModel.ProductName = product.ProductName;
            _context.ProductTable.Update(productModel);
            _context.SaveChanges();
        }


        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            var productModel = _context.ProductTable.FirstOrDefault(x => x.ProductID == id);
            _context.ProductTable.Remove(productModel);
            _context.SaveChanges();
        }



        [HttpGet]
        [Route("AllAgarbati")]
        public IEnumerable<ProductViewModel> AllAgarbati()
        {
            var data = _context.ProductTable.OrderByDescending(x => x.CREATED_DATE).Select(t => new ProductViewModel()
            {
                ImageURL = t.ImageURL,
                ProductDescription = t.ProductDescription,
                ProductID = t.ProductID,
                ProductName = t.ProductName

            }).ToList();
            return data;
           
        }
    }
}
