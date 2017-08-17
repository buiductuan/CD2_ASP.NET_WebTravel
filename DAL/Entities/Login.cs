using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAL.Entities
{
    public class Login
    {
        public Login() { }
        public string UserName { get; set; }
        public string Password { get; set; }
        public bool AccountInUse { get; set; }
    }
}
