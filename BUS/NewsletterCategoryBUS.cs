using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using DAL;
namespace BUS
{
    public class NewsletterCategoryBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        #region CRUD
        public IEnumerable<News_Category> GetData()
        {
            IEnumerable<News_Category> res = from n in context.News_Categories
                                             where n.Status==true
                                             select n;
            return res;
        }
        public void InsertNewsletterCategory(string name, string metaTitle, int ParentID, int displayOrder, string SeoTitle, DateTime CreateDate, Employee em, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaScription, bool status)
        {
            News_Category c = new News_Category();
            c.NameNewsCategory = name;
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
            context.News_Categories.InsertOnSubmit(c);
            context.SubmitChanges();
        }
        public void DeleteNewsCategory(long id)
        {
            News_Category c = (from n in context.News_Categories
                               select n).SingleOrDefault(t => t.NewsCategoryID == id);
            context.News_Categories.DeleteOnSubmit(c);
            context.SubmitChanges();
        }
        public void UpdateNewsCategory(long id, string name, string metaTitle, int ParentID, int displayOrder, string SeoTitle, DateTime CreateDate, Employee em, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaScription, bool status)
        {
            News_Category c = (from n in context.News_Categories
                               select n).SingleOrDefault(t => t.NewsCategoryID == id);
            c.NameNewsCategory = name;
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
            string res = (from c in context.News_Categories
                          where c.NewsCategoryID == id
                          select c.NameNewsCategory).Single().ToString();
            return res;
        }
        public string MetaTile(int id)
        {
            string res = (from c in context.News_Categories
                          where c.NewsCategoryID == id
                          select c.MetaTile).Single().ToString();
            return res;
        }
        public string SeoTitle(int id)
        {
            string res = (from c in context.News_Categories
                          where c.NewsCategoryID == id
                          select c.SeoTitle).Single().ToString();
            return res;
        }
        public string MetaDescription(int id)
        {
            string res = (from c in context.News_Categories
                          where c.NewsCategoryID == id
                          select c.MetaDescription).Single().ToString();
            return res;
        }
        public string Status(int id)
        {
            string res = (from c in context.News_Categories
                          where c.NewsCategoryID == id
                          select c.Status).Single().ToString();
            return res;
        }
        //name
        public int NewsCategoryID(string name)
        {
            int res = int.Parse((from c in context.News_Categories
                                 where c.NameNewsCategory == name
                                 select c.NewsCategoryID).Single().ToString());
            return res;
        }
        #endregion
        //Check ID
        public int Check_Newsletter_CategoryID(int id)
        {
            int res = (from c in context.News_Categories
                       where c.NewsCategoryID == id
                       select c).Count();
            return res;
        }
        //Bind Data in DropDownList
        public void GetName_NewsletterinDropDownList(DropDownList ddl)
        {
            ddl.DataSource = (from c in context.News_Categories
                              select c.NameNewsCategory);
            ddl.DataBind();
        }
    }
}
