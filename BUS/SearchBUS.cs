using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
    
   public  class SearchBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public IEnumerable<SearchItemAllResult> SearchItem(string query)
        {
            IEnumerable<SearchItemAllResult> res = context.SearchItemAll(query);
            return res;
        }
        public IEnumerable<SP_SearchCourseResult> SearchCourse(string query)
        {
            IEnumerable<SP_SearchCourseResult> res = context.SP_SearchCourse(query);
            return res;
        }
    }
}
