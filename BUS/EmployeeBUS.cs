using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class EmployeeBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();
        private Tools tools = new Tools();
        #region CRUD
        public IEnumerable<Employee> GetEmployee()
        {
            IEnumerable<Employee> em = from e in context.Employees
                                       select e;
            return em;
        }
        public void InsertEmployee(string Name, DateTime Dayofbith, string Gender,string Email,string Phone, string Address,string avatar, string Des, string UserName,string Password,DateTime timeActive)
        {
            Employee em = new Employee();
            em.NameEmployee = Name;
            em.DayofBirth = Dayofbith;
            em.Gender = Gender;
            em.Email = Email;
            em.Phone = Phone;
            em.Address = Address;
            em.Avatar = avatar;
            em.Description = Des;
            em.Role = 1;
            em.Status = true;
            em.UserName = UserName;
            em.Password = Password;
            em.TimeActive = timeActive;
            context.Employees.InsertOnSubmit(em);
            context.SubmitChanges();
        }
        public void DeleteEmployee(int EmployeeID)
        {
            Employee em = (from e in context.Employees
                           select e).SingleOrDefault(t => t.EmployeeID == EmployeeID);
            context.Employees.DeleteOnSubmit(em);
            context.SubmitChanges();
        }
        public void UpdateEmployee(int EmployeeID, string Name, DateTime Dayofbith, string Gender, string Email, string Phone, string Address, string avatar, string Des,int role,bool status, string UserName, string Password,DateTime timeActive)
        {
            Employee em = context.Employees.SingleOrDefault(t => t.EmployeeID == EmployeeID);
            em.NameEmployee = Name;
            em.DayofBirth = Dayofbith;
            em.Gender = Gender;
            em.Email = Email;
            em.Phone = Phone;
            em.Address = Address;
            em.Avatar = avatar;
            em.Description = Des;
            em.Role = role;
            em.Status = status;
            em.UserName = UserName;
            em.Password = Password;
            em.TimeActive = timeActive;
            context.SubmitChanges();
        }
        #endregion

        public int CheckEmployee(string Username, string Password)
        {
            int res = (from e in context.Employees
                       where e.UserName == Username && e.Password == Password
                       select e).Count();
            return res;
        }
        #region Get property

        // Get using UserName
        public int GetEmployeeID(string UserName)
        {
            int res = int.Parse((from e in context.Employees
                                 where e.NameEmployee == UserName
                                 select e.EmployeeID).Single().ToString());
            return res;
        }
        public string GetNameEmployee(string UserName)
        {
            string res = (from e in context.Employees
                          where e.UserName == UserName
                          select e.NameEmployee).Single().ToString();
            return res;
        }
        public string GetNameEmployeeByName(string UserName)
        {
            string res = (from e in context.Employees
                          where e.NameEmployee == UserName
                          select e.NameEmployee).Single().ToString();
            return res;
        }
        public string GetRoleEmployee(string UserName)
        {
            string res = (from e in context.Employees
                          where e.UserName == UserName
                          select e.Role).Single().ToString();
            return res;
        }
        public string GetAvatar_UserName(string UserName)
        {
            string res = (from e in context.Employees
                          where e.NameEmployee == UserName
                          select e.Avatar).Single().ToString();
            return res;
        }
        //Get using ID
        public string GetNameEmployeeId(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.NameEmployee).Single().ToString();
            return res;
        }
        public string GetDayofbirthEmployee(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID==id
                          select e.DayofBirth).Single().ToString();
            return res;
        }
        public string GetGender(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Gender).Single().ToString();
            return res;
        }
        public string GetEmail(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Email).Single().ToString();
            return res;
        }
        public string GetPhone(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Phone).Single().ToString();
            return res;
        }
        public string GetAddress(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Address).Single().ToString();
            return res;
        }
        public string GetAvatar(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Avatar).Single().ToString();
            return res;
        }
        public string GetDescription(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Description).Single().ToString();
            return res;
        }
        public string GetUserName(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.UserName).Single().ToString();
            return res;
        }
        public string GetPassword(int id)
        {
            string res = (from e in context.Employees
                          where e.EmployeeID == id
                          select e.Password).Single().ToString();
            return res;
        }
        #endregion

        //Update Time Active
        public void UpdateTimeActive(int id, DateTime NewTime)
        {
            Employee e = (from c in context.Employees
                          select c).SingleOrDefault(t => t.EmployeeID == id);
            e.TimeActive = NewTime;
            context.SubmitChanges();
        }

        //Encrypt Pass
        public void EncryptPassword(int id)
        {
            Employee e = (from c in context.Employees
                          select c).SingleOrDefault(t => t.EmployeeID==id);
            e.Password = tools.EncryptText(e.Password, true).ToString();
            context.SubmitChanges();
        }
    }
}
