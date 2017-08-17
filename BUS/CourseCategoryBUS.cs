using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using DAL;
namespace BUS
{
    public class CourseCategoryBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();
        #region CRUD
        public IEnumerable<Course_Category> GetData()
        {
            IEnumerable<Course_Category> res = from c in context.Course_Categories
                                               where c.Status == true
                                               orderby c.CourseCategoryID descending
                                               select c;
            return res;
        }

        public void InsertCourseCategory(string name, string  metaTitle, int ParentID, int displayOrder, string SeoTitle, DateTime CreateDate, Employee em, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaScription, bool status)
        {
            Course_Category c = new Course_Category();
            c.NameCourseCategory = name;
            c.MetaTile = metaTitle;
            c.ParentID = ParentID;
            c.DisplayOrder = displayOrder;
            c.SeoTitle = SeoTitle;
            c.CreateDate = CreateDate;
            c.EmployeeID = em.EmployeeID;
            c.ModifiedDate = ModifiedDate;
            c.ModifiedBy = ModifiedBy;
            c.MetaKeywords = MetaKeyWords;
            c.MetaDescription = MetaScription;
            c.Status = status;
            context.Course_Categories.InsertOnSubmit(c);
            context.SubmitChanges();
        }
        public void DeleteCourseCategory(int id)
        {
            Course_Category c = (from e in context.Course_Categories
                                 select e).SingleOrDefault(t => t.CourseCategoryID == id);
            context.Course_Categories.DeleteOnSubmit(c);
            context.SubmitChanges();
        }
        public void UpdateCourseCategory(int id, string name, string metaTitle, int ParentID, int displayOrder, string SeoTitle, DateTime CreateDate, Employee em, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaScription, bool status)
        {
            Course_Category c = (from e in context.Course_Categories
                                 select e).SingleOrDefault(t => t.CourseCategoryID == id);
            c.NameCourseCategory = name;
            c.MetaTile = metaTitle;
            c.ParentID = ParentID;
            c.DisplayOrder = displayOrder;
            c.SeoTitle = SeoTitle;
            c.CreateDate = CreateDate;
            c.EmployeeID = em.EmployeeID;
            c.ModifiedDate = ModifiedDate;
            c.ModifiedBy = ModifiedBy;
            c.MetaKeywords = MetaKeyWords;
            c.MetaDescription = MetaScription;
            c.Status = status;
            context.SubmitChanges();
        }
        #endregion


        #region Get property
        //Id
        public string Name(int id)
        {
            string res = (from c in context.Course_Categories
                          where c.CourseCategoryID == id
                          select c.NameCourseCategory).Single().ToString();
            return res;
        }
        public string MetaTile(int id)
        {
            string res = (from c in context.Course_Categories
                          where c.CourseCategoryID == id
                          select c.MetaTile).Single().ToString();
            return res;
        }
        public string SeoTitle(int id)
        {
            string res = (from c in context.Course_Categories
                          where c.CourseCategoryID == id
                          select c.SeoTitle).Single().ToString();
            return res;
        }
        public string MetaDescription(int id)
        {
            string res = (from c in context.Course_Categories
                          where c.CourseCategoryID == id
                          select c.MetaDescription).Single().ToString();
            return res;
        }
        public string Status(int id)
        {
            string res = (from c in context.Course_Categories
                          where c.CourseCategoryID == id
                          select c.Status).Single().ToString();
            return res;
        }
        //name
        public int CourseCategoryID(string name)
        {
            int res = int.Parse((from c in context.Course_Categories
                       where c.NameCourseCategory==name
                       select c.CourseCategoryID).Single().ToString());
            return res;
        }
        #endregion

        #region Get any
         public void GetDropDownList(DropDownList ddl)
        {
            string[] res = (from c in context.Course_Categories
                            where c.Status==true
                            select c.NameCourseCategory).ToArray<string>();
            ddl.DataSource = res;
            ddl.DataBind();
        } 
        #endregion

        //CheckID
        public int Check_Course_CategoryID(int id)
        {
            int res = (from c in context.Course_Categories
                       where c.CourseCategoryID == id
                       select c).Count();
                return res;
        }
    }
}
