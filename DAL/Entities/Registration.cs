using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entities
{
  public  class Registration
    {
        public Registration() { }
        public string UserName { get; set; }
        public bool UserNameInUse { get; set; }
    }
}
