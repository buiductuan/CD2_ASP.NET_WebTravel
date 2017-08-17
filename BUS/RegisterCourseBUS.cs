using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
    public class RegisterCourseBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        #region CRUD
        public IEnumerable<RegisterCourse> GetData()
        {
            IEnumerable<RegisterCourse> res = from c in context.RegisterCourses
                                              where c.Status == true
                                              select c;
            return res;
        }
        public void InsertData(int CourseID, string nameCustomer, string email, string phone, float total)
        {
            RegisterCourse r = new RegisterCourse();
            r.CourseID = CourseID;
            r.NameCustomer = nameCustomer;
            r.Email = email;
            r.Phone = phone;
            r.DateRegister = DateTime.Now;
            r.Total = total;
            r.Status = true;
            context.RegisterCourses.InsertOnSubmit(r);
            context.SubmitChanges();
        }
        #endregion

        #region Get properties
        #endregion
    }
}
