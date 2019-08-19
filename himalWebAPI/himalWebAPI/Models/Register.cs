using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace himalWebAPI.Models
{
    public class Register
    {
        [Key]
        public int ID { get; set; }     
        public string FIRST_NAME { get; set; }     
        public string LAST_NAME { get; set; }        
        [Phone]
        public string MOBILE_NUMBER { get; set; }      
        public string EMAIL { get; set; }      
        public string PASSWORD { get; set; }
        public string UserName { get; internal set; }
    }
}
