using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class GlobalBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public string Count_All_Course()
        {
            string res = (from c in context.Courses
                          select c).Count().ToString();
            return res;
        }

        public string Count_All_Member()
        {
            string res = (from c in context.Customers
                          select c).Count().ToString();
            return res;
        }
        public string Count_All_Newsletter()
        {
            string res = (from c in context.Newsletters
                          select c).Count().ToString();
            return res;
        }
        public string Count_All_CourseCategory()
        {
            string res = (from c in context.Course_Categories
                          select c).Count().ToString();
            return res;
        }

    }
}
