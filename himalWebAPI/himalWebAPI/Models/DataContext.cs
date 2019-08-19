using himalWebAPI.ViewModel;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace himalWebAPI.Models
{
    public class DataContext: DbContext
    {
        public DataContext(DbContextOptions<DataContext> options): base(options)
        {
        }
        public DbSet<Product> ProductTable { get; set; }
        public DbSet<Register> RegisterTable { get; set; }
        
        public IEnumerable<ProductViewModel> ProductViewModel { get; internal set; }
    }

}
