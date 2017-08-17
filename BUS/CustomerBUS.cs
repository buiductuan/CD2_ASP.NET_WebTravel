using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class CustomerBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();
        private Tools tools = new Tools();
        #region Customer
        public IEnumerable<Customer> GetData()
        {
            IEnumerable<Customer> res = (from c in context.Customers
                                         where c.Status == true
                                         select c);
            return res;
        }
        public void Delete(int id)
        {
            Customer c = (from cs in context.Customers
                          select cs).SingleOrDefault(t => t.CustomerID == id);
            context.Customers.DeleteOnSubmit(c);
            context.SubmitChanges();
        }
        public void SignUp(string UserName, string Password)
        {
            Customer cs = new Customer();
            cs.UserName = UserName.Trim();
            cs.Password = Password.Trim();
            cs.Role = 1;
            cs.Avatar = tools.Radom_Avatar_Customer();
            cs.Status = true;
            context.Customers.InsertOnSubmit(cs);
            context.SubmitChanges();
        }

        public int CheckUserName(string UserName)
        {
            int res = (from c in context.Customers
                       where c.UserName == UserName
                       select c).Count();
            return res;
        }

        public int CheckCustomerAccount(string UserName, string Password)
        {
            int res = (from s in context.Customers
                       where s.UserName == UserName && s.Password == Password
                       select s).Count();
            return res;
        }

        public string GetNameCustomer(string UserName)
        {
            string res = (from e in context.Customers
                          where e.UserName == UserName
                          select e.UserName).Single().ToString();
            return res;
        }
        public string GetRoleCustomer(string UserName)
        {
            string res = (from e in context.Customers
                          where e.UserName == UserName
                          select e.Role).Single().ToString();
            return res;
        }
        //Get avatar by userName
        public string GetAvatarByUserName(string UserName)
        {
            string res = (from c in context.Customers
                          where c.UserName == UserName
                          select c.Avatar).Single().ToString();
            return res;
        }
        #endregion
    }
}
