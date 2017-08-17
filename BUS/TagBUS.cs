using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class TagBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public IEnumerable<Tag> GetData()
        {
            IEnumerable<Tag> res = from e in context.Tags
                                   select e;
            return res;
        }
        public void InsertTag(string tagID, string name)
        {
            Tag t = new Tag();
            t.tagID = tagID;
            t.Name = name;
            context.Tags.InsertOnSubmit(t);
            context.SubmitChanges();
        }
    }
}
