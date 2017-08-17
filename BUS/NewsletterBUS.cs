using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class NewsletterBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();
        #region CRUD
        public IEnumerable<Newsletter> GetData()
        {
            IEnumerable<Newsletter> res = from c in context.Newsletters
                                          where c.Status == true
                                          select c;
            return res;
        }
        public void InsertNewsletter(long NewsletterCategory, string Name, string MetaTitle, int DisplayOrder, string SEOTitle, string Image, string detail, string Description, DateTime CreateDate, int EmployeeID, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaDescription, bool Status)
        {
            Newsletter c = new Newsletter();
            c.NewsCategoryID = NewsletterCategory;
            c.NameNewsletter = Name;
            c.MetaTile = MetaTitle;
            c.DisplayOrder = DisplayOrder;
            c.SeoTitle = SEOTitle;
            c.Image = Image;
            c.Detail = detail;
            c.Description = Description;
            c.CreateDate = CreateDate;
            c.EmployeeID = EmployeeID;
            c.ModifiedDate = ModifiedDate;
            c.ModifiedBy = ModifiedBy;
            c.MetaKeywords = MetaKeyWords;
            c.MetaDescription = MetaDescription;
            c.Status = Status;
            c.ViewCount = 0;
            context.Newsletters.InsertOnSubmit(c);
            context.SubmitChanges();
        }
        public void DeleteNewsletter(int id)
        {
            Newsletter n = (from c in context.Newsletters
                            select c).SingleOrDefault(t => t.NewsletterID == id);
            context.Newsletters.DeleteOnSubmit(n);
            context.SubmitChanges();
        }
        public void UpdateNewsletter(long NewsletterID, long NewsletterCategory, string Name, string MetaTitle, int DisplayOrder, string SEOTitle, string Image, decimal price, string detail, string Description, DateTime CreateDate, int EmployeeID, DateTime ModifiedDate, string ModifiedBy, string MetaKeyWords, string MetaDescription, bool Status)
        {
            Newsletter c = (from n in context.Newsletters
                            select n).SingleOrDefault(t => t.NewsletterID == NewsletterID);
            c.NewsCategoryID = NewsletterCategory;
            c.NameNewsletter = Name;
            c.MetaTile = MetaTitle;
            c.DisplayOrder = DisplayOrder;
            c.SeoTitle = SEOTitle;
            c.Image = Image;
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
        #endregion
        #region Get properties
        //ID 
        public string Description(long id)
        {
            string res = (from c in context.Newsletters
                          where c.NewsletterID == id
                          select c.Description).Single().ToString();
            return res;
        }
        public string ViewCount(long id)
        {
            string res = (from c in context.Newsletters
                          where c.NewsletterID == id
                          select c.ViewCount).Single().ToString();
            return res;
        }
        public string Image(long id)
        {
            string res = (from c in context.Newsletters
                          where c.NewsletterID == id
                          select c.Image).Single().ToString();
            return res;
        }
        public string Detail(long id)
        {
            string res = (from c in context.Newsletters
                          where c.NewsletterID == id
                          select c.Detail).Single().ToString();
            return res;
        }
        public int GetNewsletterCategory(int id)
        {
            int res = Convert.ToInt32((from c in context.Newsletters
                                       where c.NewsletterID == id
                                       select c.NewsCategoryID).Single().ToString());
            return res;
        }
        //Seotitle
        public string NameBySeo(string seo)
        {
            string res = (from c in context.Newsletters
                          where c.SeoTitle == seo
                          select c.NameNewsletter).Single().ToString();
            return res;
        }
        public int NewsletterID_By_Seotitle(string seo)
        {
            int res = int.Parse((from c in context.Newsletters
                       where c.SeoTitle == seo
                       select c.NewsletterID).Single().ToString());
            return res;
        }
        #endregion
        //Check SEO-title
        public bool Check_SeoTitle_Newsletter(string seo)
        {
            int res = (from c in context.Newsletters
                       where c.SeoTitle == seo
                       select c).Count();
            if (res > 0)
                return true;
            else
                return false;
        }
        //Update viewcount
        public void Up_ViewCount(int id)
        {
            Newsletter res = (from c in context.Newsletters
                              select c).SingleOrDefault(t => t.NewsletterID == id);
            res.ViewCount = res.ViewCount + 1;
            context.SubmitChanges();
        }
    }
}
