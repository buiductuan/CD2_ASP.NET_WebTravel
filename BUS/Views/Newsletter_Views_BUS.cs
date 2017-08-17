using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS.Views
{
   
   public class Newsletter_Views_BUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public IEnumerable<Newsletter_Category_Employee> GetData()
        {
            IEnumerable<Newsletter_Category_Employee> res = from c in context.Newsletter_Category_Employees
                                                            where c.Status == true
                                                            orderby c.NewsletterID descending
                                                            select c;
            return res;
        }
    }
}
