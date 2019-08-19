using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using himalWebAPI.Models;
using himalWebAPI.ViewModel;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace himalWebAPI.Controllers
{
    [Route("api/[controller]")]
    public class RegisterController : Controller
    {
        private readonly DataContext _context;

        public RegisterController(DataContext context)
        {
            _context = context; 

            //if (_context.RegisterTable.Count() == 0)
            //{
            //    // Create a new TodoItem if collection is empty,
            //    // which means you can't delete all TodoItems.

            //    _context.RegisterTable.Add(new Register { EMAIL = "Item2" });
            //    _context.SaveChanges();
            //}
        }

        // GET: api/<controller>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        [HttpPost]
        public bool Post([FromBody]Register model)
        {
            try
            {
               
                _context.RegisterTable.Add(model);
                _context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                throw;
                //return false;

            }
        
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }

        [HttpPost]
        [Route("Login")]
        public bool Login([FromBody]LoginViewModel model)
        {
            var check = _context.RegisterTable.Where(x => x.EMAIL == model.UserName && x.PASSWORD == model.Password).FirstOrDefault();
            if(check!=null)
            {
                return true;
            }
            return false;
        }

        // UPDATE POST api/<controller>
        [HttpPost]
        [Route("ResetPswd")]
        public bool UpdatePassword([FromBody]LoginViewModel model)
        {
            try
            {
                var check = _context.RegisterTable.Where(x => x.EMAIL == model.UserName).FirstOrDefault();
                if (check != null)
                {
                    check.PASSWORD = model.Password;
                
                    _context.RegisterTable.Update(check);
                    _context.SaveChanges();
                }
                  return false;                                          
            }
            catch (Exception ex)
            {
                throw;
                //return false;

            }

        }


        // UPDATE api/<controller>/5
        //[HttpPost]
        //[Route("")]
        //public bool UpdatePassword([FromBody]LoginViewModel model)
        //{
        //    var check = _context.RegisterTable.Where(x => x.EMAIL == model.UserName).FirstOrDefault();
        //    if (check != null)
        //    {
        //        return true;
        //    }
        //    return false;
        //}
    }
}
