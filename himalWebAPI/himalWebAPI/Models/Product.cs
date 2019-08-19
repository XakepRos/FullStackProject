using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace himalWebAPI.Models
{
    public class Product
    {
        [Key]
        public int ProductID { get; set; }
        [Required]
        public string ProductName { get; set; }
        public string ImageURL { get; set; }
        [Required]
        public string ProductDescription { get; set; }
        public string CREATED_BY { get; set; }

        //[DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        //[SqlDefaultValue(DefaultValue = "getutcdate()")]
        public DateTime CREATED_DATE { get; set; }

        //[DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime MODIFIED_DATE { get; set; }

        public Product()
        {
            this.CREATED_DATE = DateTime.UtcNow;
            this.MODIFIED_DATE = DateTime.UtcNow;
        }

        //public Product()
        //{
        //    MODIFIED_DATE = DateTime.Now;
        //}
    }
}
