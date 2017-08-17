using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
    public class CourseBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();
        #region CRUD
        public IEnumerable<Course> GetData()
        {
            IEnumerable<Course> res = from c in context.Courses
                                      where c.Status == true
                                      orderby c.CourseID descending
                                      select c;
            return res;
        }
     
        public IEnumerable<Course> GetAllData()
        {
            IEnumerable<Course> res = from c in context.Courses
                                      select c;
            return res;
        }

        public IEnumerable<Course> CourseSailent()
        {
            IEnumerable<Course> res = from c in context.Courses
                                      where c.Status == true
                                      orderby c.Viewcount descending
                                      select c;
            return res;
        }
        public void InsertCourse(long CourseCategoryID,string Name, string MetaTitle,int DisplayOrder, string SEOTitle, string Image,decimal price, string detail, string Description, DateTime CreateDate, int EmployeeID, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaDescription, bool Status)
        {
            Course c = new Course();
            c.CourseCategoryID = CourseCategoryID;
            c.NameCourse = Name;
            c.MetaTile = MetaTitle;
            c.DisplayOrder = DisplayOrder;
            c.SeoTitle = SEOTitle;
            c.Image = Image;
            c.Price = price;
            c.Detail = detail;
            c.Description = Description;
            c.CreateDate = CreateDate;
            c.EmployeeID = EmployeeID;
            c.ModifiedDate = ModifiedDate;
            c.ModifiedBy = ModifiedBy;
            c.MetaKeywords = MetaKeyWords;
            c.MetaDescription = MetaDescription;
            c.Status = Status;
            c.Viewcount = 0;
            context.Courses.InsertOnSubmit(c);
            context.SubmitChanges();
        }
        public void DeleteCourse(int id)
        {
            Course c = (from i in context.Courses
                        select i).SingleOrDefault(t => t.CourseID == id);
            context.Courses.DeleteOnSubmit(c);
            context.SubmitChanges();
        }
        public void UpdateCourse(int id, int CourseCategoryID, string Name, string MetaTitle, int DisplayOrder, string SEOTitle, string Image, decimal price, string detail, string Description, DateTime CreateDate, int EmployeeID, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaDescription, bool Status)
        {
            Course c = (from i in context.Courses
                        select i).SingleOrDefault(t => t.CourseID == id);
            c.CourseCategoryID = CourseCategoryID;
            c.NameCourse = Name;
            c.MetaTile = MetaTitle;
            c.DisplayOrder = DisplayOrder;
            c.SeoTitle = SEOTitle;
            c.Image = Image;
            c.Price = price;
            c.Detail = detail;
            c.Description = Description;
            c.CreateDate = CreateDate;
            c.EmployeeID = EmployeeID;
            c.ModifiedDate = ModifiedDate;
            c.ModifiedBy = ModifiedBy;
            c.MetaKeywords = MetaKeyWords;
            c.MetaDescription = MetaDescription;
            c.Status = Status;
            context.SubmitChanges();
        }
        public void UpdateCourseName(int id,string Name)
        {
            Course c = (from i in context.Courses
                        select i).SingleOrDefault(t => t.CourseID == id);
            c.NameCourse = Name;
            context.SubmitChanges();
        }
        #endregion

        #region Get property
        //id
        public string GetName(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.NameCourse).Single().ToString();
            return res;
        }
        public string MetaTitle(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.MetaTile).Single().ToString();
            return res;
        }
        public string SeoTile(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.SeoTitle).Single().ToString();
            return res;
        }
        public string Price(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.Price).Single().ToString();
            return res;
        }
        public string Detail(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.Detail).Single().ToString();
            return res;
        }
        public string Description(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.Description).Single().ToString();
            return res;
        }
        public string MetaDescription(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.MetaDescription).Single().ToString();
            return res;
        }
        public string Status(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.Status).Single().ToString();
            return res;
        }
        public string GetViews(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.Viewcount).Single().ToString();
            return res;
        }
        public string GetImage(int id)
        {
            string res = (from c in context.Courses
                          where c.CourseID == id
                          select c.Image).Single().ToString();
            return res;
        }
       public int GetIDByName(string name)
        {
            int res = Convert.ToInt32((from c in context.Courses
                                        where c.NameCourse == name
                                        select c.CourseID).Single().ToString());
            return res;
        }
        // SEO title
        public int CourseID(string seo)
        {
            int res  = int.Parse((from c in context.Courses
                        where c.SeoTitle==seo
                        select c.CourseID).Single().ToString());
            return res;
        }
        //Check seo title
        public int CheckSEOTile_Course(string seo)
        {
            return ((from c in context.Courses
                    where c.SeoTitle == seo
                    select c).Count());
        }
        #endregion


        public void UpdateViewCourse(int id)
        {
            Course c = (from i in context.Courses
                        select i).SingleOrDefault(t => t.CourseID == id);
            c.Viewcount = c.Viewcount + 1;
            context.SubmitChanges();
        }

        public int Check_CourseID(int id)
        {
            int res = (from c in context.Courses
                       where c.CourseID == id
                       select c).Count();
            return res;
        }

        #region Filter with Category
        public IEnumerable<Course> GetDataWithCategoryCourse(string seo)
        {
            IEnumerable<Course> res = (from c in context.Courses
                                       join p in context.Course_Categories
                                       on c.CourseCategoryID equals p.CourseCategoryID
                                       where p.SeoTitle == seo
                                       select c);
            return res;
        }
        #endregion

        //Get Views 
        public IEnumerable<Course> GetDataViews()
        {
            IEnumerable<Course> res = from c in context.Courses
                                      where c.Status == true
                                      orderby c.Viewcount descending
                                      select c;
            return res.Take(9);
        }
    }
}
