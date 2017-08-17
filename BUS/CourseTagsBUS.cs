using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
   public class CourseTagsBUS
    {
        private StudyBroadDataContext context = new StudyBroadDataContext();

        public void InsertCourseTag(long CourseID, string TagID)
        {
            Course_Tag tags = new Course_Tag();
            tags.CourseID = CourseID;
            tags.tagID = TagID;
            context.Course_Tags.InsertOnSubmit(tags);
            context.SubmitChanges();
        }
    }
}
