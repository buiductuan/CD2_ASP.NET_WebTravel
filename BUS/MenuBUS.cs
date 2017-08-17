using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class MenuBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public IEnumerable<Menu> GetMenu()
        {
            IEnumerable<Menu> mn = from c in context.Menus
                                   where c.Status == true
                                   select c;
            return mn;
        }
    }
}
