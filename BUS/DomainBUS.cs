using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class DomainBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public IEnumerable<Domain> GetData()
        {
            IEnumerable<Domain> res = from c in context.Domains
                                      select c;
            return res;
        }
        public void InsertDomain(string Name)
        {
            Domain d = new Domain();
            d.Name = Name;
            d.Status = true;
            d.JustDomain = false;
            context.Domains.InsertOnSubmit(d);
            context.SubmitChanges();
        }
        public void DeleteDomain(long Id)
        {
            Domain d = (from c in context.Domains
                        select c).SingleOrDefault(t => t.DomainID == Id);
            context.Domains.DeleteOnSubmit(d);
            context.SubmitChanges();
        }
    }
}
